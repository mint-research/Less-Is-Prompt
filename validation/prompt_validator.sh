#!/bin/bash

# Systemprompt Validierungsskript

# Farbdefinitionen für Ausgabe
GREEN='\033[0;32m'
RED='\033[0;31m'
YELLOW='\033[1;33m'
NC='\033[0m' # Keine Farbe

# Hilfsfunktion
print_header() {
    echo -e "${YELLOW}===========================================${NC}"
    echo -e "${YELLOW}$1${NC}"
    echo -e "${YELLOW}===========================================${NC}"
}

# Validiere Systemprompt Dokumente
validate_systemprompt() {
    local directory=$1
    
    print_header "Systemprompt Validierung"
    
    # Python-basierte Token-Effizienz-Validierung
    python3 token_efficiency.py "$directory"
    
    # Zusätzliche Validierungen
    validate_markdown_structure "$directory"
    check_language_consistency "$directory"
}

# Markdown-Strukturprüfung
validate_markdown_structure() {
    local directory=$1
    local errors=0
    
    print_header "Markdown-Strukturprüfung"
    
    for file in "$directory"/*.md; do
        # Prüfe Grundlegende Markdown-Struktur
        if ! grep -q "^# " "$file"; then
            echo -e "${RED}FEHLER: Kein Haupttitel in $file${NC}"
            ((errors++))
        fi
        
        # Prüfe auf konsistente Überschriftenstruktur
        if ! grep -E "^(# |## |### )" "$file" > /dev/null; then
            echo -e "${RED}WARNUNG: Unkonsistente Überschriftenstruktur in $file${NC}"
        fi
    done
    
    if [ $errors -eq 0 ]; then
        echo -e "${GREEN}Markdown-Strukturprüfung bestanden${NC}"
    else
        echo -e "${RED}$errors Fehler in Markdown-Struktur gefunden${NC}"
    fi
}

# Sprachkonsistenz-Prüfung
check_language_consistency() {
    local directory=$1
    
    print_header "Sprachkonsistenz-Prüfung"
    
    # Prüfe konsistente Optimierungsmuster
    for file in "$directory"/languages/*.md; do
        if ! grep -q "# .* Chat-Effizienz" "$file"; then
            echo -e "${RED}WARNUNG: Inkonsistente Dokumentationsstruktur in $file${NC}"
        fi
    done
    
    echo -e "${GREEN}Sprachkonsistenz-Prüfung abgeschlossen${NC}"
}

# Hauptskript
main() {
    local directory=${1:-.}  # Standardverzeichnis aktuelles Verzeichnis
    
    print_header "Neomint Systemprompt Validierung"
    
    validate_systemprompt "$directory"
    
    echo -e "${GREEN}Validierung abgeschlossen${NC}"
}

# Skript ausführen
main "$@"
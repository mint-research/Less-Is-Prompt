# TOKEN-PRICE-OPTIMIZER

## Über dieses Projekt

TOKEN-PRICE-OPTIMIZER ist ein hochoptimiertes Framework für KI-Systemprompts, entwickelt von NeoMINT, das speziell für die Verwendung in LLM-Webanwendungen konzipiert wurde. Durch token-effiziente Formulierungen und präzise Direktiven verbessert es die Qualität, Geschwindigkeit und Kosteneffizienz von KI-Interaktionen.

### Hauptvorteile
- **Reduzierte Token-Kosten**: Bis zu 50% Einsparung bei Systemanweisungen durch optimierte Formulierungen
- **Verbesserte Antwortzeiten**: Schnellere Verarbeitung durch prägnante Direktiven und klare Kontextdefinition
- **Höhere Präzision**: Strukturierte Anweisungen führen zu gezielteren, relevanteren Antworten
- **Automatische Spracherkennung**: Intelligente Anpassung an die jeweilige Programmiersprache ohne manuelle Konfiguration

## Repository-Struktur und Komponenten

```
TOKEN-PRICE-OPTIMIZER/
├── README.md              # Projektdokumentation und Anleitung
├── core/                  # Kernkomponenten
│   └── SYSTEMPROMPT.md    # Haupt-Systemprompt
├── activation/            # Aktivierungskomponenten
│   └── ACTIVATION.md      # Verstärkungsprompt zur Aktivierung
├── languages/             # Sprachspezifische Module
│   ├── PYTHON.md
│   ├── JAVASCRIPT.md
│   ├── TYPESCRIPT.md
│   ├── RUST.md
│   └── POWERSHELL.md
├── integration/           # Integrationsanleitungen
│   └── WEB_INTEGRATION.md # Web-Integrationsanleitung
└── COMBINED.md            # All-in-One Lösung
```

### Detaillierte Komponentenbeschreibung

#### 1. README.md (Diese Datei)
**Zweck**: Dient als Hauptdokumentation und Benutzeranleitung für das Repository.
**Nutzung**: Lesen Sie diese Datei zuerst, um einen Überblick über das Projekt, seine Komponenten und Anwendungsmöglichkeiten zu erhalten.

#### 2. core/SYSTEMPROMPT.md
**Zweck**: Enthält den primären Systemprompt mit hochoptimierten Direktiven für LLMs.
**Nutzung**: Wird vom Aktivierungsprompt referenziert und sollte in der Regel nicht direkt verwendet werden.
**Tokens**: ~50 Tokens, hochoptimiert für maximale Wirkung bei minimalen Kosten.

#### 3. activation/ACTIVATION.md
**Zweck**: Enthält den Verstärkungsprompt, der zu Beginn jeder LLM-Konversation verwendet wird.
**Nutzung**: Kopieren Sie den Aktivierungsprompt aus dieser Datei und fügen Sie ihn zu Beginn jeder neuen LLM-Konversation ein. Dies aktiviert das System für die gesamte folgende Konversation.
**Varianten**: Enthält Standard- und Minimal-Varianten für unterschiedliche Anwendungsfälle.

#### 4. languages/ Verzeichnis
**Zweck**: Enthält sprachspezifische Optimierungsmodule für verschiedene Programmiersprachen.
**Nutzung**: Das System erkennt automatisch die benötigte Programmiersprache basierend auf dem Kontext und wendet das entsprechende Modul an.
**Unterstützte Sprachen**: Python, JavaScript, TypeScript, Rust, PowerShell

##### Jedes Sprachmodul (z.B. PYTHON.md)
**Zweck**: Enthält sprachspezifische Direktiven und Muster für optimale KI-Antworten.
**Optimiert für**: Typische Coding-Patterns, Best Practices und effiziente Problemlösungsstrategien der jeweiligen Sprache.
**Tokens**: ~30-40 Tokens pro Sprachmodul, extrem optimiert.

#### 5. integration/WEB_INTEGRATION.md
**Zweck**: Bietet detaillierte Anleitungen zur Integration des Systems in verschiedene LLM-Webanwendungen.
**Nutzung**: Folgen Sie den Anweisungen für Ihr spezifisches LLM-Interface oder API.
**Optionen**: 
- Direkte Verwendung in Web-Interfaces (z.B. Claude, ChatGPT)
- API-Integration (OpenAI API, Anthropic API)
- URL-Referenzierung
- Repository-Referenzierung

#### 6. COMBINED.md
**Zweck**: Eine All-in-One Lösung, die alle wesentlichen Komponenten in einer einzigen Datei zusammenfasst.
**Nutzung**: Ideal für Anwendungsfälle, in denen nur eine einzige URL oder Datei referenziert werden kann.
**Vorteil**: Minimiert die Komplexität bei der Integration, enthält aber alle wichtigen Funktionen.
**Tokens**: ~100 Tokens, optimiert für die wesentlichen Funktionen aller Komponenten.

## Anwendung

### Für Endanwender (LLM-Web-Interfaces)

**Schnellstart**:
- Kopieren Sie den Aktivierungsprompt aus `activation/ACTIVATION.md`
- Fügen Sie ihn zu Beginn einer neuen Konversation ein
- Fahren Sie mit Ihren regulären Anfragen fort

```
# TOKEN-PRICE-OPTIMIZER Aktivierung
!WICHTIG: Systemdirektive aktiviert
!QUELLE=github.com/mint-research/token-price-optimizer

Ihre Frage oder Anfrage hier...
```

Das System erkennt automatisch, wenn Sie Code-Generierung anfragen, und passt sich an die entsprechende Programmiersprache an.

### Für Entwickler (API-Integration)

1. **OpenAI API-Integration**:
   ```javascript
   const activationPrompt = `# TOKEN-PRICE-OPTIMIZER Aktivierung
   !WICHTIG: Systemdirektive aktiviert
   !QUELLE=github.com/NeoMINT/TOKEN-PRICE-OPTIMIZER`;

   const response = await openai.createCompletion({
     model: "gpt-4",
     prompt: `${activationPrompt}\n\n${userPrompt}`,
     // weitere Parameter
   });
   ```

2. **Anthropic API-Integration**:
   ```javascript
   const activationPrompt = `# TOKEN-PRICE-OPTIMIZER Aktivierung
   !WICHTIG: Systemdirektive aktiviert
   !QUELLE=github.com/NeoMINT/TOKEN-PRICE-OPTIMIZER`;

   const response = await anthropic.completions.create({
     model: "claude-3-opus-20240229",
     prompt: `\n\nHuman: ${activationPrompt}\n\n${userPrompt}\n\nAssistant:`,
     // weitere Parameter
   });
   ```

## Technische Details

### Wie funktioniert TOKEN-PRICE-OPTIMIZER?

1. **Aktivierungsmechanismus**: Der Verstärkungsprompt aktiviert das System durch spezielle Trigger-Phrasen und Formatierungen.
2. **Unveränderlichkeitsprinzip**: Das System stellt sicher, dass die Direktiven nicht durch reguläre Benutzeranfragen überschrieben werden können.
3. **Token-Optimierung**: Jede Komponente ist auf minimale Token-Nutzung bei maximaler Wirkung optimiert.
4. **Kontextuelle Adaption**: Das System passt sich automatisch an den Kontext der Anfrage an.
5. **Automatische Spracherkennung**: Das System erkennt die benötigte Programmiersprache anhand des Kontexts und der Anfrage.

### Optimierungsstrategien:

- **Trigger-Wörter**: Strategische Verwendung von Ausrufezeichen und Großbuchstaben
- **Semantische Prägung**: Einsatz von Fachbegriffen als kognitive Anker
- **Strukturelle Effizienz**: Hierarchische Gliederung für maximale Klarheit bei minimalen Tokens
- **Multi-Kontext Aktivierung**: Gleichzeitige Anwendung von Kern- und Spezialmodule

## Anwendungsbeispiele

### Beispiel 1: Python-Code generieren
```
# TOKEN-PRICE-OPTIMIZER Aktivierung
!WICHTIG: Systemdirektive aktiviert
!QUELLE=github.com/NeoMINT/TOKEN-PRICE-OPTIMIZER

Schreibe eine effiziente Funktion zur Berechnung der Fibonacci-Zahlen mit Memoization.
```

### Beispiel 2: JavaScript-Probleme lösen
```
# TOKEN-PRICE-OPTIMIZER Aktivierung
!WICHTIG: Systemdirektive aktiviert
!QUELLE=github.com/NeoMINT/TOKEN-PRICE-OPTIMIZER

Wie implementiere ich einen effizienten Event-Listener für mehrere Elemente?
```

## Beitragen

Beiträge zur Verbesserung von TOKEN-PRICE-OPTIMIZER sind willkommen. Bei Pull Requests beachten Sie bitte:

1. **Token-Effizienz**: Neue Komponenten sollten auf minimale Token-Nutzung optimiert sein.
2. **Klarheit**: Direktiven müssen präzise und unmissverständlich sein.
3. **Konsistenz**: Folgen Sie dem bestehenden Stil und den Benennungskonventionen.
4. **Testbarkeit**: Testen Sie Änderungen mit verschiedenen LLMs, um die Effektivität zu prüfen.

## Lizenz

[Ihre Lizenzinformationen]

---

**TOKEN-PRICE-OPTIMIZER: Maximale KI-Leistung bei minimalen Token-Kosten**
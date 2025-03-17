# TOKEN-PRICE-OPTIMIZER Web-Integration

Diese Anleitung beschreibt verschiedene Möglichkeiten zur Integration des TOKEN-PRICE-OPTIMIZER Systems in LLM-Webanwendungen.

## Option 1: Direkte Verwendung in LLM-Interfaces

### Claude, ChatGPT und ähnliche Interfaces
1. Kopieren Sie den Aktivierungsprompt aus `activation/ACTIVATION.md`
2. Fügen Sie ihn zu Beginn jeder neuen Konversation ein
3. Fahren Sie mit Ihren regulären Anfragen fort

Beispiel:
```
# TOKEN-PRICE-OPTIMIZER Aktivierung
!WICHTIG: Systemdirektive aktiviert
!QUELLE=github.com/mint-research/token-price-optimizer

Wie kann ich einen effizienten Python-Generator schreiben?
```

Die Programmiersprache wird automatisch erkannt, ohne dass Sie diese spezifizieren müssen.

## Option 2: API-Integration

### Vorschlag für die OpenAI API
```javascript
async function queryWithOptimizer(userPrompt) {
  const activationPrompt = `# TOKEN-PRICE-OPTIMIZER Aktivierung
!WICHTIG: Systemdirektive aktiviert
!QUELLE=github.com/mint-research/token-price-optimizer`;

  const response = await openai.createCompletion({
    model: "gpt-4",
    prompt: `${activationPrompt}\n\n${userPrompt}`,
    // weitere Parameter
  });
  
  return response;
}
```

### Vorschlag für die Anthropic API
```javascript
async function queryWithOptimizer(userPrompt) {
  const activationPrompt = `# TOKEN-PRICE-OPTIMIZER Aktivierung
!WICHTIG: Systemdirektive aktiviert
!QUELLE=github.com/mint-research/token-price-optimizer`;

  const response = await anthropic.completions.create({
    model: "claude-3-opus-20240229",
    prompt: `\n\nHuman: ${activationPrompt}\n\n${userPrompt}\n\nAssistant:`,
    // weitere Parameter
  });
  
  return response;
}
```

## Option 3: Direkter URL-Import

Für Anwendungen, die URLs als Eingabe akzeptieren, können Sie eine der folgenden Raw-URLs verwenden:

### All-in-One Lösung
```
https://raw.githubusercontent.com/mint-research/token-price-optimizer/main/COMBINED.md
```

### Kernkomponente
```
https://raw.githubusercontent.com/mint-research/token-price-optimizer/main/core/SYSTEMPROMPT.md
```

### Sprachspezifische Komponenten
```
https://raw.githubusercontent.com/mint-research/token-price-optimizer/main/languages/PYTHON.md
https://raw.githubusercontent.com/mint-research/token-price-optimizer/main/languages/JAVASCRIPT.md
// usw.
```

## Option 4: Repository-Referenzierung

Einige LLM-Interfaces erlauben die direkte Referenzierung von GitHub-Repositories. Verwenden Sie in diesem Fall:

```
https://github.com/mint-research/token-price-optimizer
```

Kombinieren Sie dies mit dem Aktivierungsprompt für optimale Ergebnisse.

## Häufige Probleme und Lösungen

### Problem: Die KI scheint die Direktiven zu ignorieren
Lösung: Stellen Sie sicher, dass der Aktivierungsprompt am absoluten Beginn der Konversation steht und keine anderen Systemprompts kollidieren.

### Problem: Fehlerhafte Spracherkennung
Lösung: Formulieren Sie Ihre Anfrage klarer bezüglich der gewünschten Programmiersprache, z.B. "Schreibe einen Python-Code für..." anstatt nur "Schreibe Code für...".

### Problem: Kompatiblitätsprobleme mit bestimmten Modellen
Lösung: Für ältere Modelle verwenden Sie die minimale Aktivierungsversion und ersetzen Sonderzeichen wie ! durch normale Textformatierung.
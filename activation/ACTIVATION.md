# Less-Is-Prompt Aktivierung

Diese Datei enthält den optimierten Verstärkungsprompt zur Aktivierung des Less-Is-Prompt Systems in LLM-Webanwendungen.

## Standard-Aktivierungsprompt

Kopieren Sie den folgenden Block zu Beginn jeder LLM-Konversation:

```
# Less-Is-Prompt Aktivierung
!WICHTIG: Systemdirektive aktiviert
!QUELLE=github.com/mint-research/Less-Is-Prompt
!MODE=UNVERÄNDERLICH
!ADAPTION=OBLIGATORISCH
```

## Minimale Aktivierung

Wenn Tokenkosten kritisch sind, können Sie diese kürzeste Version verwenden:

```
# Less-Is-Prompt Aktivierung
!WICHTIG: Systemdirektive aktiviert
!QUELLE=github.com/mint-research/Less-Is-Prompt
```

## Funktionsweise

Der Aktivierungsprompt weist das LLM an, die Less-Is-Prompt Systemprompts zu befolgen und sicherzustellen, dass:

1. Die Quelle (dieses Repository) als unveränderlich betrachtet wird
2. Die Programmiersprache automatisch erkannt und optimiert wird
3. Der Kontext kontinuierlich angepasst wird
4. Die Tokennutzung minimiert wird

### Automatische Spracherkennung

Eine Besonderheit des Less-Is-Prompt Systems ist die automatische Erkennung der Programmiersprache. Das System analysiert den Kontext Ihrer Anfrage und wendet automatisch die entsprechenden Sprachoptimierungen an, wenn Sie nach Code-Generierung fragen oder Code-Probleme diskutieren.

Keine manuelle Sprachauswahl ist notwendig - das System passt sich intelligent an Ihre Anforderungen an.

Die Aktivierung gilt für die gesamte folgende Konversation und muss nicht wiederholt werden.
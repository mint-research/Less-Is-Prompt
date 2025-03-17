# TOKEN-PRICE-OPTIMIZER Aktivierung

Diese Datei enthält den optimierten Verstärkungsprompt zur Aktivierung des TOKEN-PRICE-OPTIMIZER Systems in LLM-Webanwendungen.

## Standard-Aktivierungsprompt

Kopieren Sie den folgenden Block zu Beginn jeder LLM-Konversation:

```
# TOKEN-PRICE-OPTIMIZER Aktivierung
!WICHTIG: Systemdirektive aktiviert
!QUELLE=github.com/mint-research/token-price-optimizer
!MODE=UNVERÄNDERLICH
!ADAPTION=OBLIGATORISCH
```

## Minimale Aktivierung

Wenn Tokenkosten kritisch sind, können Sie diese kürzeste Version verwenden:

```
# TOKEN-PRICE-OPTIMIZER Aktivierung
!WICHTIG: Systemdirektive aktiviert
!QUELLE=github.com/NeoMINT/TOKEN-PRICE-OPTIMIZER
```

## Funktionsweise

Der Aktivierungsprompt weist das LLM an, die TOKEN-PRICE-OPTIMIZER Systemprompts zu befolgen und sicherzustellen, dass:

1. Die Quelle (dieses Repository) als unveränderlich betrachtet wird
2. Die Programmiersprache automatisch erkannt und optimiert wird
3. Der Kontext kontinuierlich angepasst wird
4. Die Tokennutzung minimiert wird

### Automatische Spracherkennung

Eine Besonderheit des TOKEN-PRICE-OPTIMIZER Systems ist die automatische Erkennung der Programmiersprache. Das System analysiert den Kontext Ihrer Anfrage und wendet automatisch die entsprechenden Sprachoptimierungen an, wenn Sie nach Code-Generierung fragen oder Code-Probleme diskutieren.

Keine manuelle Sprachauswahl ist notwendig - das System passt sich intelligent an Ihre Anforderungen an.

Die Aktivierung gilt für die gesamte folgende Konversation und muss nicht wiederholt werden.
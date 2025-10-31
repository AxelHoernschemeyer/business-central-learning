# 🧰 AL-Erweiterung & Shortcut-Übersicht

Diese Datei bietet eine kompakte Einführung in die Besonderheiten der AL-Sprache, typische Layout-Tricks, Erweiterungen für Business Central und häufig genutzte Shortcuts.

## 🧭 Inhaltsverzeichnis
- [🔤 AL-Syntax – Besonderheiten](#-al-syntax--besonderheiten)
- [📦 Erweiterungen für AL-Entwicklung](#-erweiterungen-für-al-entwicklung)
- [✂️ Layout-Tricks mit `field('', '')`](#-layout-tricks-mit-field)
- [🧠 Tipps für sauberen AL-Code](#-tipps-für-sauberen-al-code)
- [📚 Ressourcen & Links](#-ressourcen--links)

## 🔤 AL-Syntax – Besonderheiten
| Besonderheit | Beispiel | Erklärung |
|--------------|----------|-----------|
| Apostroph | `'You''re done!'` | Zwei `'` ergeben ein `'` |
| Option-Werte | `Step := Step::First;` | Zugriff auf `Option`-Typen |
| Kein `else if` | `else if x = ...` | Muss verschachtelt geschrieben werden |
| ... | ... | ... |

## 📦 Erweiterungen für AL
- **AL Language** – offizielles Microsoft-Paket
- **AZ AL Dev Tools** – Snippets, Strukturhilfen
- **AL Test Runner** – Testautomatisierung
- **Docker Explorer** – Containerverwaltung

## ✂️ Layout-Tricks mit `field('', '')`
- Leerzeile erzeugen
- Visuellen Trenner mit `'--------'`
- Gruppierung ohne Datenbindung

## 🧠 Tipps für sauberen AL-Code
- Nutze `InstructionalText` statt `Text`
- Vermeide `null` – nutze leere Strings
- Kommentiere Trigger und Felder sinnvoll

## 📚 Ressourcen & Links
- [Microsoft Learn – AL Language](https://learn.microsoft.com/en-us/dynamics365/business-central/dev-itpro/developer/devenv-reference-for-al)
- [GitHub – AL Samples](https://github.com/microsoft/ALAppExtensions)


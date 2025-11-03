# 🧰 AL-Erweiterung & Shortcut-Übersicht

Diese Datei bietet eine kompakte Einführung in die Besonderheiten der AL-Sprache, typische Layout-Tricks, Erweiterungen für Business Central und häufig genutzte Shortcuts – inklusive Tipps für Mac-Nutzer mit deutscher Tastatur.

---

## 🧭 Inhaltsverzeichnis
- [🔤 AL-Syntax – Besonderheiten](#-al-syntax--besonderheiten)
- [🧩 AL vs. C/AL – Methodenaufrufe](#-al-vs-cal--methodenaufrufe)
- [✂️ Layout-Tricks mit `field('', '')`](#-layout-tricks-mit-field)
- [⌨️ Sonderzeichen auf Mac-Tastatur](#-sonderzeichen-auf-mac-tastatur)
- [📦 Erweiterungen für AL-Entwicklung](#-erweiterungen-für-al-entwicklung)
- [🧠 Tipps für sauberen AL-Code](#-tipps-für-sauberen-al-code)
- [📚 Ressourcen & Links](#-ressourcen--links)

---

## 🔤 AL-Syntax – Besonderheiten

| Besonderheit | Beispiel | Erklärung |
|--------------|----------|-----------|
| Apostroph | `'You''re done!'` | Zwei `'` ergeben ein `'` |
| Option-Werte | `Step := Step::First;` | Zugriff auf `Option`-Typen mit `::` |
| Kein `else if` | `else if x = ...` | Muss verschachtelt geschrieben werden |
| `if ... then` | `if x = 1 then ...` | `then` sollte in der gleichen Zeile stehen |
| `begin ... end` | `if x then begin ... end;` | Für mehrzeilige Blöcke |
| InstructionalText | `InstructionalText = 'Hinweis';` | Für statische Texte in Pages |
| Kein `null` | `if MyText = '' then ...` | Leere Strings statt `null` |

---

## 🧩 AL vs. C/AL – Methodenaufrufe

| Sprache | Methode | Syntax |
|---------|---------|--------|
| C/AL | `Init` | `Customer.Init;` |
| AL | `Init()` | `Customer.Init();` ✅ Pflicht! |
| C/AL | `Insert` | `Customer.Insert;` |
| AL | `Insert()` | `Customer.Insert();` ✅ Pflicht! |

> **Regel:** In AL sind Klammern `()` bei allen Methoden Pflicht – auch ohne Parameter.

---

## ✂️ Layout-Tricks mit `field('', '')`

- Leerzeile erzeugen
- Visuellen Trenner mit `'--------'`
- Gruppierung ohne Datenbindung

```al
field(Spacer; '')
{
    ShowCaption = false;
    Editable = false;
    MultiLine = true;
}
```

---

## ⌨️ Sonderzeichen auf Mac-Tastatur

| Zeichen | Shortcut (deutsche Mac-Tastatur) |
|---------|----------------------------------|
| `|` (Pipe) | `Option + 7` *(ggf. Shortcut entfernen)* |
| `{` | `Option + 8` *(ggf. Konflikt mit FoldLevel8)* |
| `}` | `Option + 9` |
| `[` | `Option + 5` |
| `]` | `Option + 6` |
| `\` | `Option + Shift + 7` |
| Emoji-Menü | `Cmd + Ctrl + Space` |

> Tipp: Alternative Eingabequelle „ABC – QWERTZ“ aktivieren für zuverlässige Sonderzeichen.

---

## 📦 Erweiterungen für AL-Entwicklung

- **AL Language** – offizielles Microsoft-Paket
- **AZ AL Dev Tools** – Snippets, Strukturhilfen
- **AL Test Runner** – Testautomatisierung
- **Docker Explorer** – Containerverwaltung

---

## 🧠 Tipps für sauberen AL-Code

- Nutze `InstructionalText` statt `Text`
- Vermeide `null` – nutze leere Strings
- Kommentiere Trigger und Felder sinnvoll
- Verwende `begin ... end` bei mehrzeiligen Blöcken
- Halte `if ... then` in einer Zeile, wenn möglich

---

## 📚 Ressourcen & Links

- [Microsoft Learn – AL Language](https://learn.microsoft.com/en-us/dynamics365/business-central/dev-itpro/developer/devenv-reference-for-al)
- [GitHub – AL Samples](https://github.com/microsoft/ALAppExtensions)
- [AL Vokabelliste](../information/AL-Vokabelliste.md)
- [DataClassification Übersicht](../information/AL-DataClassification.md)
```
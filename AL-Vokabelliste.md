# 📘 AL-Vokabelliste

Eine Sammlung zentraler Begriffe aus der AL-Entwicklung für Microsoft Dynamics 365 Business Central – mit kurzen Erklärungen und Beispielen.

---

## 🔤 Grundbegriffe

| Begriff           | Bedeutung                                                                 |
|------------------|---------------------------------------------------------------------------|
| `tableextension` | Erweiterung einer bestehenden Tabelle                                     |
| `pageextension`  | Erweiterung einer bestehenden Page                                        |
| `extends`        | Verknüpft die Erweiterung mit dem Originalobjekt                         |
| `trigger`        | Ereignisgesteuerter Codeblock (z. B. `OnInsert`, `OnValidate`)            |
| `begin/end`      | Start und Ende eines Codeblocks                                           |
| `field`          | Definition eines neuen Feldes in einer Tabelle                           |
| `action`         | Schaltfläche in einer Page                                                |
| `Message()`      | Zeigt eine Meldung an                                                     |
| `Error()`        | Bricht mit Fehlermeldung ab                                               |
| `StrLen()`       | Gibt die Länge eines Textes zurück                                        |
| `Trim()`         | Entfernt Leerzeichen am Anfang und Ende eines Textes                     |

---

## 🛠️ Objekttypen in AL

- `table` – Neue Tabelle
- `tableextension` – Erweiterung einer bestehenden Tabelle
- `page` – Neue Page
- `pageextension` – Erweiterung einer bestehenden Page
- `codeunit` – Logikmodul für Funktionen und Events
- `report` – Bericht mit Layout
- `enum` – Aufzählungstyp
- `enumextension` – Erweiterung eines Enums

---

## 📌 Hinweise & Konventionen

- Objektnummern ab `50000` für eigene Erweiterungen
- AL ist case-insensitive (`No`, `no`, `NO` sind gleichwertig)
- Kommentare mit `//` oder `/* ... */`
- AL-Projekte bestehen aus `.al`-Dateien und einer `app.json`

---

## 📎 Nützliche Snippets in VS Code

| Kürzel | Funktion                     |
|--------|------------------------------|
| `tabe` | Erstellt ein `tableextension`-Gerüst |
| `pagee`| Erstellt ein `pageextension`-Gerüst |
| `trig` | Fügt einen Trigger ein       |
| `proc` | Erstellt eine `procedure`    |

---

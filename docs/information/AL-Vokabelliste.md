# 📘 AL-Vokabelliste

Eine Sammlung zentraler Begriffe aus der AL-Entwicklung für Microsoft Dynamics 365 Business Central – mit kurzen Erklärungen und Beispielen.

---

## 🔤 Grundbegriffe

| Begriff           | Bedeutung                                                                |
|------------------|---------------------------------------------------------------------------|
| `tableextension` | Erweiterung einer bestehenden Tabelle                                     |
| `pageextension`  | Erweiterung einer bestehenden Page                                        |
| `extends`        | Verknüpft die Erweiterung mit dem Originalobjekt                          |
| `trigger`        | Ereignisgesteuerter Codeblock (z. B. `OnInsert`, `OnValidate`)            |
| `begin/end`      | Start und Ende eines Codeblocks                                           |
| `field`          | Definition eines neuen Feldes in einer Tabelle                            |
| `action`         | Schaltfläche in einer Page                                                |
| `Message()`      | Zeigt eine Meldung an                                                     |
| `Error()`        | Bricht mit Fehlermeldung ab                                               |
| `StrLen()`       | Gibt die Länge eines Textes zurück                                        |
| `Trim()`         | Entfernt Leerzeichen am Anfang und Ende eines Textes                      |
| `StrMenu()`      | Zeigt ein Auswahlmenü und gibt die Nummer der gewählten Option zurück     |

## 🔤 Zeichenfolgefunktionen

| Funktion       | Syntax                                           | Beschreibung                                                                 |
|----------------|--------------------------------------------------|------------------------------------------------------------------------------|
| `StrPos`       | `Position := StrPos(Text, Substring);`           | Position des Substrings in Text                                              |
| `IndexOf`      | `Text.IndexOf(Substring[, StartPosition]);`      | Position des Substrings, optional mit Startposition                          |
| `CopyStr`      | `CopyStr(Text, StartIndex, [Length]);`           | Kopiert Teilstring                                                           |
| `Substring`    | `Text.Substring(5, 10);`                         | Gibt Teilstring zurück, Fehler bei ungültigen Parametern                     |
| `SelectStr`    | `SelectStr(2, Text);`                            | Gibt Wert nach erstem Komma zurück                                           |
| `Split`        | `Text.Split(',').Get(2);`                        | Zerlegt Zeichenfolge, Zugriff auf Teilstück                                  |
| `InsStr`       | `InsStr(Text, 'or ESC ', 13);`                   | Fügt Zeichenfolge an bestimmter Position ein                                 |
| `StrLen`       | `StrLen(Text)`                                   | Länge der Zeichenfolge                                                       |
| `MaxStrLen`    | `MaxStrLen(Text)`                                | Maximale Länge der Variable                                                  |
| `LowerCase`    | `LowerCase(Text)`                                | Wandelt in Kleinbuchstaben um                                                |
| `UpperCase`    | `UpperCase(Text)`                                | Wandelt in Großbuchstaben um                                                 |
| `ToLower`      | `Text.ToLower()`                                 | Alternative zu `LowerCase`                                                   |
| `ToUpper`      | `Text.ToUpper()`                                 | Alternative zu `UpperCase`                                                   |
| `IncStr`       | `IncStr('Test 99')`                              | Erhöht Zahl in Zeichenfolge                                                  |
| `Contains`     | `Text.Contains('abc')`                           | Prüft, ob Teilzeichenfolge enthalten ist                                     |
| `EndsWith`     | `Text.EndsWith('xyz')`                           | Prüft, ob Zeichenfolge mit Wert endet                                        |
| `IndexOfAny`   | `Text.IndexOfAny(['a','b'])`                     | Erster Index eines Zeichens aus Liste                                        |
| `LastIndexOf`  | `Text.LastIndexOf('x')`                          | Letzter Index eines Zeichens                                                 |
| `PadLeft`      | `Text.PadLeft(10, '*')`                          | Links auffüllen bis Länge erreicht                                           |
| `PadRight`     | `Text.PadRight(10, '-')`                         | Rechts auffüllen bis Länge erreicht                                          |
| `Remove`       | `Text.Remove(2, 3)`                              | Entfernt Teilzeichenfolge                                                    |
| `Replace`      | `Text.Replace('old','new')`                      | Ersetzt Teilzeichenfolge                                                     |
| `StartsWith`   | `Text.StartsWith('abc')`                         | Prüft, ob Zeichenfolge mit Wert beginnt                                     |
| `TrimEnd`      | `Text.TrimEnd()`                                 | Entfernt nachfolgende Leerzeichen                                            |
| `TrimStart`    | `Text.TrimStart()`                               | Entfernt vorstehende Leerzeichen                                             |

## 📅 Datumsausdrücke
| Funktion      | Syntax                                  | Beschreibung                                                   |
|---------------|------------------------------------------|----------------------------------------------------------------|
| `Date2DMY`     | `Date2DMY(Date, What)`                  | What: 1 = Tag, 2 = Monat, 3 = Jahr                             |
| `Date2DWY`     | `Date2DWY(Date, What)`                  | What: 1 = Wochentag, 2 = Woche (KW), 3 = Jahr                  |
| `CalcDate`     | `CalcDate(DateExpression [, Date])`     | z. B. `'1W'`, `'-1Q'` → Addiert 1 Woche bzw. subtrahiert 1 Quartal |


## 🔢 Nummernausdrücke

| Funktion   | Syntax                                               | Beschreibung                                                  |
|------------|------------------------------------------------------|---------------------------------------------------------------|
| `Round`    | `Round(Number [, Precision] [, Direction])`          | `>` = aufrunden, `<` = abrunden, `=` = nächster Wert          |
| `Abs`      | `Abs(Number)`                                        | Absoluter Wert einer Zahl                                     |
| `Power`    | `System.Power(Number: Decimal, Power: Decimal)`      | Potenzierung                                                  |
| `Random`   | `Random(MaxNumber)`                                  | Zufallszahl bis MaxNumber                                     |
| `Randomize`| `Random(MaxNumber)`                                  | (Alias von `Random`)                                          |

## 🧮 Array-Datentype

| Funktion        | Syntax                                               | Beschreibung                                                  |
|-----------------|------------------------------------------------------|---------------------------------------------------------------|
| `ArrayLen`       | `ArrayLen(Array [,Dimension])`                      | Anzahl der Elemente                                           |
| `CompressArray`  | `CompressArray(StringArray)`                        | Nicht-leere Einträge nach vorne verschieben                   |
| `CopyArray`      | `CopyArray(NewArray, Array, Position [, Length])`   | Kopiert Array-Inhalte                                         |

## 📋 List Funktionen

... comming soon
- `Add(X)`
- `Contains(X)`
- `Get(index)`
- `Set(index, X)`
- `Insert(index, X)`
- `Remove(X)`
- `RemoveAt(index)`
- `Count()`
- `AddRange(X, [X], [X], ...)`
- `GetRange(index, count)`
- `RemoveRange(index, count)`
- `IndexOf(X)`
- `LastIndexOf(X)`
- `Reverse()`

## Fehler Sammeln - Error Handling

... comming soon
- `ErrorInfo.Create(String [, Boolean] [, var Record] [, Integer] [, Integer] [, String] [, Verbosity] [, DataClassification] [, Dictionary of [Text, Text]]) – Erstellt ein neues Objekt ErrorInfo.`

- `ErrorInfo.Callstack() – Gibt eine Aufrufliste an, in dem das Objekt ErrorInfo gesammelt wurde.`

- `ErrorInfo.Collectible([Boolean]) – Legt fest, ob der Fehler sammelbar ist unter Verwendung von ErrorBehavior.Collect.`

- `ErrorInfo.CustomDimensions([Dictionary of [Text, Text]]) – Ein Satz von Dimensionen, angegeben als Wörterbuch, das sich auf den Fehler bezieht.'

- `ErrorInfo.FieldNo([Integer]) – Gibt die Feld-ID an, auf die sich der Fehler bezieht.`

- `ErrorInfo.PageNo([Integer]) – Gibt die Seitennummer an, auf die sich der Fehler bezieht.`

- `ErrorInfo.RecordId([RecordId]) – Gibt die Datensatz-ID an, auf die sich der Fehler bezieht.`

- `ErrorInfo.SystemId([Guid]) – Gibt die System-ID an, auf die sich der Fehler bezieht.`

- `ErrorInfo.TableId([Integer]) – Gibt die Tabellen-ID an, auf die sich der Fehler bezieht.`

- `ErrorInfo.AddAction(Text, Integer, Text) – Gibt für den Fehler eine Aktion an.`

- `System.HasCollectedErrors() – Ruft einen Wert ab, der angibt, ob im aktuellen Fehlersammlungsbereich Fehler erfasst wurden.`

- `System.GetCollectedErrors([Boolean]) – Ruft alle gesammelten Fehler im aktuellen Erfassungsbereich auf.`

- `System.ClearCollectedErrors() – Löscht alle gesammelten Fehler im aktuellen Erfassungsbereich.`

## 🖥️ System Funktionen

... comming soon

- `UserID`
- `CompanyName`
- `Today`
- `Time`
- `WorkDate`


## 🧼 Variable Funktionen

... comming soon
- `Clear`
- `ClearAll`
- `Evaluate` – Konvertiert Text in anderen Datentyp der kein Text ist
- `Format` – Konvertiert Datentyp in Text


---

## 🛠️ AL-Objekttypen – Vokabelübersicht

Eine strukturierte Übersicht aller Objekttypen in AL mit Schlüsselwort, Zweck und typischen Beispielen.

| Schlüsselwort            | Objekttyp                 | Zweck / Beschreibung                                          | Beispielname               |
|--------------------------|---------------------------|---------------------------------------------------------------|----------------------------|
| `table`                  | Tabelle                   | Datenstruktur mit Feldern, Triggern und Keys                  | `Customer`, `Item`         |
| `tableextension`         | Tabellen-Erweiterung      | Zusätzliche Felder/Trigger für bestehende Tabellen            | `CustomerExtension`        |
| `page`                   | Seite                     | UI-Element zur Anzeige und Bearbeitung von Daten              | `CustomerCard`, `ItemList` |
| `pageextension`          | Seiten-Erweiterung        | Zusätzliche Felder, Aktionen oder Layout-Anpassungen          | `CustomerCardExt`          |
| `codeunit`               | Codeunit                  | Kapselung von Logik, Events, Funktionen                       | `CustomerValidation`       |
| `report`                 | Bericht                   | Drucklayout, Datenexport, Auswertungen                        | `SalesReport`              |
| `xmlport`                | XMLport                   | Import/Export von XML- oder CSV-Daten                         | `CustomerImport`           |
| `query`                  | Abfrage                   | SQL-ähnliche Datenaggregation                                 | `TopCustomersQuery`        |
| `enum`                   | Aufzählungstyp            | Feste Werte wie Status, Kategorien                            | `LoyaltyLevel`             |
| `enumextension`          | Enum-Erweiterung          | Zusätzliche Werte für bestehende Enums                        | `LoyaltyLevelExt`          |
| `interface`              | Schnittstelle             | Methoden-Signaturen für polymorphe Programmierung             | `IShippingProvider`        |
| `controladdin`           | UI-Steuerelement          | Einbindung von benutzerdefinierten UI-Komponenten             | `MapViewerAddIn`           |
| `permissionset`          | Berechtigungsset          | Definition von Rollen und Zugriffsrechten                     | `RetailUserPermissions`    |
| `permissionsetextension` | Berechtigungs-Erweiterung | Zusätzliche Rechte für bestehende Sets                        | `RetailUserPermissionsExt` |
| `profile`                | Benutzerprofil            | Steuerung von UI und Rollen                                   | `RetailProfile`            |
| `pagecustomization`      | Seitenanpassung           | Benutzerdefinierte Layout-Anpassung (nur bestimmte Szenarien) | `CustomerCardCustom`       |
| `entitlement`            | Zugriffsrecht             | Steuerung von App-Zugriffsrechten (AppSource-Kontext)         | `RetailEntitlement`        |


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

## 🔢 Neu gelernte Code Snippets in AL Code

| Code   | Funktion/Beschreibung.       |
|--------|------------------------------|
| `xor`  | Nur genau ein Ergenis muss tru sein |
| `DIV`  | Gibt den ganzzahligen Anteil der Division zurück – ohne Nachkommastellen. Beispiel: 5 / 2 = 2,5 → `DIV` liefert nur die 2. |
| `MOD`  | Gibt den Rest der Division zurück. Beispiel: 5 / 2 = 2,5 → 2 * 2 = 4 → Rest = 1 → `MOD` liefert die 1. |

---

Sehr gern, Axel! Hier ist eine übersichtliche **Markdown-Tabelle**, die die Unterschiede zwischen `List`, `Array`, `Dictionary` und dem allgemeinen Begriff `Collection` in AL erklärt – mit Fokus auf den Zugriff per Schlüssel:


## 📦 Vergleich von AL-Collections: Zugriffsmöglichkeiten

| Typ         | Zugriff per Index | Zugriff per String-Key | Beschreibung |
|--------------|-------------------|-------------------------|--------------|
| `Array`      | ✅ Ja              | ❌ Nein                 | Feste Größe, indexbasiert (`MyArray[1]`). Keine dynamische Erweiterung. |
| `List`       | ✅ Ja              | ❌ Nein                 | Dynamisch erweiterbare Liste, Zugriff über Position (`MyList.Get(1)`). |
| `Dictionary` | ❌ Nein            | ✅ Ja                   | Schlüssel-Wert-Sammlung. Zugriff über Schlüssel (`MyDict.Get('Key')`). |
| `Collection` | 🔄 Abstrakt        | 🔄 Abstrakt             | Oberbegriff für strukturierte Datensammlungen (z. B. List, Dictionary). Kein konkreter Typ. |

> ✅ = unterstützt ❌ = nicht unterstützt 🔄 = hängt vom konkreten Typ ab

---

### 🧠 Merksatz für dein Lernportfolio

> **Nur `Dictionary` erlaubt in AL den direkten Zugriff auf Werte über benannte Schlüssel wie Strings.**  
> `List` und `Array` sind indexbasiert, `Collection` ist ein Sammelbegriff.

---

### 📘 Funktionen mit Benutzerinteraktion

#### 🧭 `StrMenu()`

Zeigt ein einfaches Auswahlmenü mit mehreren Optionen und gibt die Nummer der gewählten Option zurück.

**🧩 Syntax:**
```al
Selection := StrMenu(TextOptions, DefaultOption, PromptText);
```

- `TextOptions`: Kommaseparierte Liste der Optionen (z. B. `'Yes,No,Maybe'`)
- `DefaultOption`: Nummer der vorausgewählten Option (z. B. `1`)
- `PromptText`: Frage oder Hinweistext im Dialog (z. B. `'Please choose:'`)

**🧪 Beispiel:**
```al
Days := 'Monday,Tuesday,Wednesday,Thursday,Friday';
Selection := StrMenu(Days, 1, 'Which day is today ?');
Message('You selected %1.', Selection);
```

💡 Gibt z. B. `3` zurück, wenn „Wednesday“ gewählt wurde.  
Wenn du den gewählten Text anzeigen möchtest, verwende zusätzlich `SelectStr(Selection, Days)`.

```

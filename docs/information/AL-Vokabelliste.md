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

| Begriff           | Syntax                                | Bedeutung                         |
|-----------------------------------------------------------------------------------------------|
| StrPos            | Position := StrPos(Text, Substring);                  | Liefert die Pos. des Substring in Text                                   |
| IndexOf           | Position := Text.IndexOf(Substring,[StartPosition]);  | Liefert die Pos. des Substring in Text. Mgl. zur Angabe der Startpos.    |
| CopyStr           | NewString := CopyStr(Text, StartIndex, [Length]);     |
| Substring         | newString := MyLongString.Substring(5, 10);           | Achtung: Wenn einer der Parameter nicht zum String passt, gibt es einen Fehler    |
| SelectStr         | newString := SelectStr(2, MyLongString);              | Gibt den Wert nach dem ersten Komma zurück. Bei (1, MyLong...) vor erstem Komma   |
| Split             | newString := MyLongString.Split(',').Get(2);          | Wie oben nur nicht auf Komma beschränkt und erweiterbar                           |
| InsStr            | newString := InsStr(MyLongString, 'or ESC ', 13);     | Fügt eine Zeichenfolge an einer bestimmten Position in eine vorhandene Zeichenfolge ein |
| StrLen            | Integer := StrLen(MyLongString)                       | Ermittelt die Länge des Feldinhalts   |
| MaxStrLen         | Integer := MaxStrLen(MyLongString)                    | Ermittelt die maximale Länge des Feldes oder der Variable |
| LowerCase         | String := LowerCase(MyLongString)
| Uppercase         | String := UpperCase(MyLongString)
| ToLower           | MyLongString.ToLower()
| ToUpper           | MyLongString.ToUpper()
| IncStr            | String := IncStr('Test 99') oder IncStr('Test -99')   | Erhöht eine Zahl in einer Zeichenfolge. Ist Zahl negativ, wird um eins verringert. (100 o. -100)|
| Contains          |   | Überprüft, ob eine Zeichenfolge ein Zeichen oder eine Teilzeichenfolge enthält.|
| EndsWith          |   | Überprüft, ob eine Zeichenfolge mit einem bestimmten Wert endet.
| IndexOfAny        |   | Ruft den ersten Index eines der Zeichen ab. Gibt Null zurück, wenn keine gefunden wird.
| LastIndexOf       |   | Ruft den letzten Index eines Zeichens oder einer Zeichenfolge ab. Gibt Null zurück, wenn keine gefunden wird
| PadLeft           |   | Richtet die Zeichen in der Instanz nach rechts aus, indem Sie sie für eine bestimmte Gesamtlänge links auffüllen. Sie können angeben, welches Zeichen zum Auffüllen verwendet wird.
| PadRight          |   | Richtet die Zeichen in der Instanz nach links aus, indem Sie sie für eine bestimmte Gesamtlänge rechts auffüllen. Sie können angeben, welches Zeichen zum Auffüllen verwendet wird
| Remove            |   | Entfernt eine Teilzeichenfolge aus einem Text
| Replace           |   | Ersetzt eine Teilzeichenfolge aus einem Text.
| StartsWith        |   | Überprüft, ob eine Zeichenfolge mit einem bestimmten Wert beginnt.
| TrimEnd           |   | Entfernt alle nachfolgenden Vorkommen eines Zeichensatzes.
| TrimStart         |   | Entfernt alle vorstehenden Vorkommen eines Zeichensatzes.

## Datumsausdrücke

| Date2DMY          | Number := Date2DMY(Date, What);   | What: 1 = Tag, 2 = Monat, 3 = Jahr
| Date2DWY          | Number := Date2DWY(Date, What);   | What: 1 = Wochentag, 2 = Woche (KW), 3 = Jahr
| Calcdate          | NewDate := CalcDate(DateExpression [, Date]);     | DateExpression = D, W, M, Q, Y <-> '1W', '-1Q' Addiert 1 Woche bzw. suptrahiert 1 Quartal

## Nummernausdrücke

| Round             | NewNumber := Round(Number [, Precision] [, Direction]);   | '>' – Rundet auf, '<' – Rundet ab, '=' Rundet auf nächsten Wert -- Round(1234.56789, 0.001, '>') = .568
| ABS               | NewNumber := Abs(Number);                                 | Abs berechnet den absoluten Wert einer Zahl - Abs(-20) = 20
| Power             | NewNumber :=  System.Power(Number: Decimal, Power: Decimal)   | Erhöht eine Zahl auf eine Potenz
| Random            | Number := Random(MaxNumber);  | Ermittelt eine Zufallszahl
| Randomize         | Number := Random(MaxNumber);  | Ermittelt eine Zufallszahl

## Array-Datentype

| ArrayLen      | Length := ArrayLen(Array [,Dimension]);   | gibt die Anzahl der aktuellen Elemente in einem Array zurück. .[1],.[2],.[3],.[1] = 3|
| CompressArray | Count := CompressArray(StringArray);      | verschiebt nicht leeren Zeichenfolgen eines Arrays an den Anfang des Arrays. Leer sind dann am Ende |
| CopyArray     | CopyArray(NewArray, Array, Position [, Length]);  | erstellt ein neues Array basierend auf einem vorhandenen. |

## List Funktionen

... comming soon
| Add(X)
| Contains(X)
| Get(index)
| Set(index, X)
| Insert(index, X)
| Remove(X)
| RemoveAt(index)
| Count(index)
| AddRange(X, [X], [X], ...)
| GetRange(index, count, List of [X])
| RemoveRange(index, count)
| IndexOf(X)
| LastIndexOf(X)
| Reverse

## System Funktionen

... comming soon

| UserID
| CompanyName
| Today
| Time
| WorkDate

## Variable Funktionen

... comming soon
| Clear
| ClearAll
| Evaluate      | | Variable des Textdatentyps (Code oder Text) in einen anderen Datentyp konvertieren (der kein Text ist).
| Format        | | Format konvertiert einen Datentyp in einen Textdatentyp.

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

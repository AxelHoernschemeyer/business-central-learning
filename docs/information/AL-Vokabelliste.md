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
# 💡 AL-Anweisungen in Business Central

Diese Übersicht fasst die wichtigsten AL-Anweisungen zusammen – inklusive Kommentare, Bedingungen und Schleifen – basierend auf dem Microsoft Learn Modul [AL-Anweisungen](https://learn.microsoft.com/de-de/training/modules/al-statements/).

---

## 🧠 Übersicht: AL-Anweisungstypen

| 🗂️ Kategorie         | 🔤 Anweisungstyp       | 📝 Beschreibung |
|----------------------|------------------------|------------------|
| 💬 Kommentare         | `//` oder `/* ... */`  | Zeilenweise (`//`) oder Blockkommentare (`/* ... */`) zur Code-Erklärung. |
| 🧱 Zusammengesetzt    | `begin ... end;`       | Gruppiert mehrere Anweisungen zu einer logischen Einheit. |
| 🎯 Bedingung          | `if ... then`          | Führt eine Anweisung aus, wenn die Bedingung erfüllt ist. |
| 🎯 Bedingung          | `case ... of`          | Prüft mehrere mögliche Werte und führt passende Anweisungen aus. |
| 🔁 Wiederholung       | `for ... do`           | Schleife mit fester Anzahl Durchläufe. |
| 🔁 Wiederholung       | `while ... do`         | Schleife mit Bedingung am Anfang – kann auch 0-mal ausgeführt werden. |
| 🔁 Wiederholung       | `repeat ... until`     | Schleife mit Bedingung am Ende – wird mindestens einmal ausgeführt. |

---

## 🔍 `while`-Schleifen – sinnvoll oder veraltet?

### ❌ Warum `while`-Schleifen seltener verwendet werden

| ⚠️ Grund | 📌 Erklärung |
|----------|--------------|
| Endlos-Schleifen möglich | Wenn die Bedingung nie falsch wird, läuft die Schleife unendlich. |
| Weniger lesbar           | Die Bedingung steht am Anfang, aber der Leser kennt den Ablauf noch nicht. |
| Schwer testbar           | Ohne klaren Zähler oder Abbruchbedingung ist die Schleife schwer zu debuggen. |
| Alternativen sind klarer | `repeat until` oder `for` sind oft besser geeignet und lesbarer. |

---

### ✅ Wann `while` trotzdem sinnvoll ist

| 💡 Einsatz | 🧪 Beispiel |
|------------|------------|
| Abbruch vor erster Ausführung | Du willst nur dann etwas tun, wenn eine Bedingung *vorher* erfüllt ist. |
| Komplexe Bedingungen          | Wenn du mehrere Flags oder externe Zustände prüfen musst. |
| Dynamische Datenbankabfragen | z. B. solange ein Record gefunden wird, der bestimmte Kriterien erfüllt. |

---

## 🔧 Vergleich: `while` vs. `repeat until`

```al
// while: prüft zuerst
while not IsDone do begin
    ProcessNext();
end;

// repeat until: führt mindestens einmal aus
repeat
    ProcessNext();
until IsDone;
```

---

## ✅ Fazit

- `while` ist **nicht veraltet**, aber in modernen AL-Projekten **nur gezielt einzusetzen**.
- Für viele typische Schleifen ist `repeat until` oder `for` **klarer, sicherer und wartungsfreundlicher** – besonders im Teamkontext oder bei Code Reviews.

---

## 📚 Quellen

- [Microsoft Learn – AL-Anweisungen](https://learn.microsoft.com/de-de/training/modules/al-statements/)
- [Microsoft Learn – Best Practices for AL Code](https://learn.microsoft.com/en-us/dynamics365/business-central/dev-itpro/compliance/apptest-bestpracticesforalcode)
- [alguidelines.dev – AL Code Best Practices](https://alguidelines.dev/docs/bestpractices/)
```

---

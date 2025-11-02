# 🧰 AL: Entfernen einer gepackten Extension aus einer Business Central Sandbox — Schritt‑für‑Schritt

Diese Anleitung beschreibt sichere Wege, eine mit `AL: Package` (F5) gepackte und per Ctrl+F5 veröffentlichte Extension aus einer Business Central Sandbox zu entfernen. Enthält: **Deinstallation über die UI**, **PowerShell (lokal/OnPrem)**, **Sandbox‑Reset** und **Clean‑Deployment**. Kleine Icons markieren die Abschnitte für bessere Lesbarkeit.

---

## 🧾 Voraussetzungen
- 🔑 **Zugriff** auf die Sandbox oder lokale BC‑Instanz.  
- 👤 **Tenant‑Admin** Rechte in Cloud‑Sandbox oder Administratorrechte auf dem Server für PowerShell.  
- 💾 **Snapshot / Backup** vor kritischen Änderungen empfohlen.  
- 📝 **Extension‑Name**, **Version** und relevante Werte aus `app.json` notieren.

---

## 1️⃣ Deinstallation über die Business Central UI
- 🔍 **Öffnen**: Business Central in der Sandbox starten.  
- 🧭 **Navigieren**: Suche nach **Erweiterungsverwaltung** / **Extension Management**.  
- ✅ **Auswählen**: Extension (Name wie in `app.json`) markieren.  
- 🗑️ **Deinstallieren**: Button anklicken und bestätigen.  
- 🔎 **Prüfen**: Anschließend Liste der installierten Erweiterungen prüfen; betroffene Tabellen auf verbleibende Spalten/Daten kontrollieren.  
- ⚠️ **Fallback**: Falls Deinstallation fehlschlägt, Fehlermeldung notieren und mit Abschnitt 2 (PowerShell) oder 3 (Reset) fortfahren.

---

## 2️⃣ Entfernen mit PowerShell (lokal / OnPrem)
- 🖥️ **Vorbereitung**: Business Central Management Shell oder PowerShell als Administrator mit geladenen BC‑Modulen öffnen.  
- 💬 **Beispielbefehle**:
```powershell
Get-NAVAppInfo
Uninstall-NAVApp -ServerInstance BC -Name "Publisher.Business-Central-Learning" -Tenant default
Unpublish-NAVApp -ServerInstance BC -Name "Publisher.Business-Central-Learning"
Remove-NAVApp -Name "Publisher.Business-Central-Learning" -Version "1.0.0.0"
```
- 🧠 **Hinweise**:
  - Nach Entfernen unbedingt Tabellen und DB‑Struktur prüfen — Table Extensions legen Spalten persistent an.  
  - Prüfe und entferne zuerst Abhängigkeiten anderer Extensions, falls vorhanden.

---

## 3️⃣ Sandbox zurücksetzen (sauberer Ausgangszustand)
- 🕒 **Wann nutzen**: Wenn viele Änderungen entfernt oder ein vollständig sauberer Zustand benötigt wird.  
- ☁️ **Cloud Sandbox**: Reset/Restore über das Admin‑Portal oder Sandbox‑Management ausführen.  
- 🐳 **Lokale Docker Sandbox**: Container neu starten oder frischen Container aus Basis‑Image erstellen.  
- ⚠️ **Achtung**: Reset löscht alle Testdaten und installierten Extensions — vorher Snapshot erstellen, falls Daten erhalten bleiben sollen.

---

## 4️⃣ Alternative: Clean‑Deployment (Überschreiben)
- 🔢 **Step 1**: Versionsnummer in `app.json` erhöhen.  
- 🧩 **Step 2**: Neue `.app` erzeugen, die nur gewünschte Objekte enthält oder komplett leer ist.  
- 🚀 **Step 3**: Neue Version in die Sandbox veröffentlichen; dadurch lassen sich UI‑Elemente/Aktionen überschreiben.  
- ✔️ **Step 4**: Prüfen, ob unerwünschte UI‑Elemente und Aktionen verschwinden.  
- 🔍 **Hinweis**: Feldspalten aus Table Extensions werden nicht immer automatisch entfernt; DB‑Prüfung und ggf. manuelle Bereinigung nötig.

---

## 🔎 Prüfung nach Entfernung
- 🖥️ **UI prüfen**: Sind Aktionen, Menüs und UI‑Elemente verschwunden?  
- 🗄️ **DB prüfen**: Existieren zusätzliche Spalten in betroffenen Tabellen?  
- 🔗 **Dependencies prüfen**: Blockiert eine andere Extension die Entfernung?  
- 📜 **Logs prüfen**: Server‑Logs und Event Logs auf Fehlermeldungen untersuchen.

---

## 🛡️ Vorsichtsmaßnahmen und Best Practices
- 🧪 Änderungen immer zuerst in einer **Sandbox** testen.  
- 🧾 **Snapshot / Backup** vor Deinstallation oder Reset erstellen.  
- 🗂️ Extension‑Name, Version und **Objekt‑IDs** dokumentieren.  
- 🏷️ Für Produktivumgebungen: Change Management, Release Notes und Rollback‑Plan vorbereiten.  
- 🛠️ Prüfen, ob Table Extensions Spalten erzeugt haben; Entfernen von Spalten erfordert oft manuelle DB‑Arbeit.

---

## 📝 Kurze Checkliste vor dem Entfernen
- ✔️ **Adminrechte** vorhanden  
- ✔️ **Backup / Snapshot** erstellt  
- ✔️ **Extension‑Name** aus `app.json` notiert  
- ✔️ Auf **Abhängigkeiten** geprüft  
- ✔️ Vorgehen gewählt: **UI / PowerShell / Reset / Clean‑Deploy**

---

## 🐞 Troubleshooting (Kurz)  
| Problem | Ursache | Lösung |
|---|---:|---|
| Deinstallation fehlschlägt wegen Abhängigkeit | Andere Extension benötigt Objekte | Abhängigkeiten identifizieren und zuerst entfernen |
| UI‑Elemente bleiben sichtbar | Cache oder UI‑Metadaten nicht aktualisiert | Browser‑Cache leeren; Sandbox neu starten |
| Table‑Spalten bleiben in DB | Table Extension hat Spalten persistent erzeugt | Schema prüfen; nur mit DB‑Admin manuell bereinigen |

---

## 🗂️ Empfehlungen für die Dokumentation
- 📸 **Screenshot** von Extension‑Info, Version und Veröffentlichungszeitpunkt speichern.  
- 🧾 **Änderungsprotokoll** führen: Wer, wann, welche Schritte ausgeführt hat.  
- ✅ **Automatisierte Checks** nach Entfernung laufen lassen, um UI‑ und Datenintegrität sicherzustellen.

---

*Letzte Aktualisierung: 22. Oktober 2025 — Erstellt von Axel Hörnschemeyer*
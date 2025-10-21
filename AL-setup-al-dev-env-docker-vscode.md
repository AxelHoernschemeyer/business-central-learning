Ja, genau Axel — und das habe ich jetzt für dich vorbereitet. Hier ist der vollständige Inhalt deiner Datei **`setup-al-dev-env-docker-vscode.md`**, sauber formatiert in Markdown. Du kannst sie direkt in dein Projektverzeichnis legen oder in GitHub hochladen:

---

### 📄 `setup-al-dev-env-docker-vscode.md`

```markdown
# 🧭 AL-Entwicklungsumgebung mit Docker & VS Code: Schritt-für-Schritt Anleitung

Diese Anleitung dokumentiert die vollständige Einrichtung einer lokalen AL-Entwicklungsumgebung für Microsoft Dynamics 365 Business Central mit Docker und Visual Studio Code. Enthalten sind alle Schritte, aufgetretene Probleme und deren Lösungen — ideal für Wiederverwendung, Teamweitergabe oder Portfolio-Dokumentation.

---

## 🧱 Voraussetzungen

- Docker Desktop installiert und lauffähig
- Visual Studio Code mit folgenden Erweiterungen:
  - ✅ **AL Language extension for Microsoft Dynamics 365 Business Central** (`@id:ms-dynamics-smb.al`)
  - Optional: CRS AL Language, AL Object ID Ninja, AL Navigator etc.
- Business Central Container (`bcdev`) mit Webclient und NavUserPassword-Authentifizierung

---

## 1️⃣ Projektordner öffnen

```powershell
cd "C:\Pfad\zu\business-central-learning"
code .
```

→ VS Code öffnet den Projektordner direkt.

---

## 2️⃣ AL Language Extension prüfen

- Öffne `Strg+Shift+X` → Suche nach `@id:ms-dynamics-smb.al`
- Installiere die Erweiterung **„AL Language extension for Microsoft Dynamics 365 Business Central“**
- Bestätige, dass im Output-Panel der Kanal **„AL“** verfügbar ist

---

## 3️⃣ Business Central Container erstellen

```powershell
$pwd = ConvertTo-SecureString -String "P@ssword1" -AsPlainText -Force
New-BCContainer `
  -containerName bcdev `
  -accept_eula `
  -auth NavUserPassword `
  -updateHosts `
  -includeAL `
  -Credential (New-Object PSCredential "admin", $pwd)
```

→ Container startet mit Webclient unter `http://bcdev/BC/?tenant=default`

---

## 4️⃣ Hosts-Datei prüfen

```powershell
notepad $env:SystemRoot\System32\drivers\etc\hosts
```

→ Folgende Einträge müssen vorhanden sein:

```
172.18.xx.xx bcdev
172.18.xx.xx bcdev-default
```

→ IP-Adresse aus `docker inspect bcdev` oder `docker ps` entnehmen

---

## 5️⃣ Webclient testen

- Öffne `http://bcdev/BC/?tenant=default` im Browser
- Melde dich mit:
  - Benutzername: `admin`
  - Passwort: `P@ssword1`

---

## 6️⃣ launch.json konfigurieren

```json
{
  "version": "0.2.0",
  "configurations": [
    {
      "type": "al",
      "request": "launch",
      "name": "business-central-learning",
      "server": "http://bcdev",
      "serverInstance": "BC",
      "authentication": "UserPassword",
      "tenant": "default",
      "startupObjectId": 22,
      "startupObjectType": "Page"
    }
  ]
}
```

→ Alternativ `"server": "http://172.18.xx.xx"` verwenden, falls `bcdev` nicht auflösbar ist

---

## 7️⃣ Symbol-Download ausführen

- Öffne `Strg+Shift+P` → `AL: Download Symbols`
- Gib Benutzername `admin` und Passwort `P@ssword1` ein
- Output-Panel → Kanal: **AL**

### ✅ Erfolgsmeldung:

```
All reference symbols have been downloaded.
```

---

## 🐞 Aufgetretene Probleme & Lösungen

| Problem | Ursache | Lösung |
|--------|---------|--------|
| `AL Language` nicht im Output-Panel sichtbar | Erweiterung nicht installiert | Erweiterung `@id:ms-dynamics-smb.al` installieren |
| `http://localhost:8080` nicht erreichbar | Container verwendet `bcdev` als Hostname | Hosts-Datei prüfen und `bcdev` eintragen |
| `Web service call failed because user could not be authenticated` | Benutzer `admin` nicht korrekt angelegt oder Passwort falsch | Webclient testen, ggf. Benutzer neu anlegen |
| `AL: Download Symbols` schlägt trotz Webclient-Zugang fehl | Credential Cache fehlerhaft oder falsche Authentifizierungsmethode | `AL: Clear credentials cache` ausführen, `launch.json` prüfen |
| Berechtigungssätze wie `D365 EXTENSION MGT` fehlen | Nicht in lokalen Containern enthalten | Rolle `SUPER` reicht aus, wenn korrekt zugewiesen |

---

## ✅ Nächste Schritte

- Kompilieren: `Strg+Shift+B`
- Veröffentlichen: `Strg+F5`
- Erweiterung im Webclient testen
- Mehrsprachigkeit mit `.xlf`-Dateien einbauen
- Modularisierung mit `tableextension`, `enum`, `pageextension` etc.

---

*Letzte Aktualisierung: 21. Oktober 2025 – Erstellt von Axel Hörnschemeyer mit Unterstützung von Copilot*

---
Natürlich, Axel! Hier ist deine vollständig aktualisierte `README.md`, inklusive der neuen Verlinkung zur Datei **`VSC-Erklärungen_und_Shortcut_Übersicht.md`**. Ich habe sie direkt nach dem Abschnitt zur Setup-Anleitung eingefügt, damit alle VS Code-bezogenen Inhalte thematisch beisammen sind.

Du kannst den folgenden Text **eins zu eins kopieren und einfügen**:

---

```markdown
🚧 Meine Lernreise von C/AL nach AL, Docker und Business Central.  🚧

# 👋 Hallo, ich bin Axel Hörnschemeyer

Willkommen auf meinem GitHub-Profil! Ich bin gerade dabei, mich in die Welt von **Microsoft Dynamics 365 Business Central** und die Programmiersprache **AL** einzuarbeiten.

## 📑 Inhalt

- [🧠 Über mich](#-über-mich)
- [🚀 Was ich gerade lerne](#-was-ich-gerade-lerne)
- [📦 Projekte & Repositories](#-projekte--repositories)
- [🎯 Ziel](#-ziel)
- [🔗 Mehr über mich](#-mehr-über-mich)
- [🧼 Git Hygiene](#-git-hygiene)
- [📚 Nächste Schritte](#-nächste-schritte)
- [📈 Fortschritt](#-fortschritt)
- [📘 AL-Vokabelliste](#-meine-al-vokabelliste)
- [🔐 DataClassification](#-meine-übersicht-zur-dataclassification)
- [🧰 Setup-Anleitung](#-setup-anleitung-für-docker--vs-code)
- [📘 VS Code Shortcuts](#-visual-studio-code--shortcuts--erklärungen)
- [🧰 Erweiterung entfernen](#-erweiterung-entfernen-sandbox-anleitung)
- [🧪 Beispiele](#-beispiel-hello-world-extension)

## 🧠 Über mich

- 💼 Langjähriger IT-Leiter mit Fokus auf ERP, Infrastruktur und Prozessoptimierung  
- 🧰 Spezialisiert auf Microsoft Dynamics NAV / Business Central, C/AL, AL  
- 🧪 Leidenschaft für strukturierte Entwicklung, Mentoring und technische Resilienz  
- 🌍 Standort: Belm bei Osnabrück – regional verwurzelt, lösungsorientiert

## 🚀 Was ich gerade lerne
- AL Language für Business Central
- Erweiterungen und Customizations in BC
- Sandbox-Umgebungen mit Docker und VS Code

## 📦 Projekte & Repositories

| Projekt | Beschreibung |
|--------|--------------|
|[`business-central-learning`](https://github.com/AxelHoernschemeyer/business-central-learning) | Beispielprojekt mit AL-Grundlagen, Tabellen, Pages und Reports |

## 🎯 Ziel
Ich möchte praxisnah lernen, wie man mit AL entwickelt – und langfristig eigene Erweiterungen für Business Central schreiben.

## 🔗 Mehr über mich
- [LinkedIn-Profil](https://www.linkedin.com/in/axel-hörnschemeyer/)
- 📁 Dieses Repository begleitet meinen Lernweg seit Oktober 2025.

## 🧼 Git Hygiene

Dieses Projekt verwendet eine `.gitignore`, um temporäre Dateien, Cache-Inhalte und Build-Artefakte auszuschließen. Ziel: saubere Versionierung und nachvollziehbare Historie.

## 📚 Nächste Schritte
Ich plane, hier bald erste AL-Projekte zu veröffentlichen – z. B. ein „Hello World“ für Business Central oder eine kleine Erweiterung.

🧪 Geplante Projekte
| Projekt | Beschreibung |
|--------|--------------|
|bc-docker-setup | Lokale Business Central Sandbox mit Docker und artifactUrl |
|bc-devops-pipeline | CI/CD-Workflow mit GitHub Actions für AL-Extensions |
|bc-testtoolkit | Automatisierte Tests mit dem Business Central Test Toolkit |

📌 Diese Projekte sind aktuell noch nicht angelegt – Inhalte folgen.

## 📈 Fortschritt
- ✅ [14.10.2025] Anfrage an Microsoft gestellt für Teilname am 365 Developer-Programm
- 🔜 Warte auf Bestätigung
- ✅ [22.10.2025] Erste AL-Extension kompiliert  
- ✅ [22.10.2025] PageExtension mit Action-Button in Arbeit  
- ✅ [22.10.2025] Veröffentlichung erster Demo-Extension
- 🔜

## 📘 Meine AL-Vokabelliste

Ich dokumentiere zentrale Begriffe aus der AL-Entwicklung in einer eigenen Datei – als persönliches Nachschlagewerk für mich und andere Einsteiger.

➡️ [Zur AL-Vokabelliste](docs/information/AL-Vokabelliste.md)

## 🔐 Meine Übersicht zur DataClassification

Ich dokumentiere alle verfügbaren Werte für die Eigenschaft `DataClassification` in AL – inklusive Beschreibung und Beispielen.

➡️ [Zur AL-DataClassification-Datei](docs/information/AL-DataClassification.md)

## 🧰 Setup-Anleitung für Docker & VS Code

Ich dokumentiere jeden Schritt meiner lokalen AL-Entwicklungsumgebung – von der Docker-Installation über die Container-Erstellung bis zum erfolgreichen Symbol-Download in VS Code.  
Die Anleitung enthält alle aufgetretenen Probleme und deren Lösungen – ideal für Wiederholung, Teamweitergabe oder Portfolio-Dokumentation.

➡️ [Zur Setup-Anleitung](docs/guides/AL-setup-al-dev-env-docker-vscode.md)

## 📘 Visual Studio Code – Shortcuts & Erklärungen

Ich dokumentiere nützliche Tastenkombinationen und Funktionen in Visual Studio Code – inklusive visueller Gliederung, Beispielen und praktischen Tipps für effizientes Arbeiten mit AL und Docker.

➡️ [Zur Übersicht der VS Code Shortcuts](docs/information/VSC-Erklärungen_und_Shortcut_Übersicht.md "Nützliche Tastenkombinationen und Funktionen in Visual Studio Code")

## 🧰 Erweiterung entfernen: Sandbox-Anleitung

Für alle, die versehentlich gepackte AL-Erweiterungen in der Sandbox veröffentlicht haben oder gezielt Objekte wieder entfernen möchten, gibt es eine strukturierte Schritt-für-Schritt-Anleitung. 
Sie enthält UI-basierte und PowerShell-Methoden, Hinweise zum Sandbox-Reset sowie Clean-Deployment-Strategien. Ideal für Tests, Rollbacks und saubere Entwicklungszyklen.

➡️ [Zur Anleitung zum entfernen](docs/guides/AL-Remove_Extension_From_Sandbox.md)

## 🧪 Beispiel: Hello World Extension

Dieses Beispiel fügt der Kundenkarte einen Action-Button „Hello World“ hinzu.  
Beim Klick erscheint eine MessageBox mit einer Begrüßung.

```al
pageextension 50100 CustomerCardExtension extends "Customer Card"
{
    actions
    {
        addlast(Processing)
        {
            action(ShowHelloWorld)
            {
                ApplicationArea = All;
                Caption = 'Hello World';
                Image = Information;
                trigger OnAction()
                begin
                    Message('Hello, Axel! Willkommen in AL.');
                end;
            }
        }
    }
}

🚧 Meine Lernreise von C/AL nach AL, Docker und Business Central.  🚧

# 👋 Hallo, ich bin Axel Hörnschemeyer

Willkommen auf meinem GitHub-Profil! Ich bin gerade dabei, mich in die Welt von **Microsoft Dynamics 365 Business Central** und die Programmiersprache **AL** einzuarbeiten.

## 📑 Inhalt

- [Über mich](#-über-mich)
- [Was ich gerade lerne](#-was-ich-gerade-lerne)
- [Projekte & Repositories](#-projekte--repositories)
- [Ziel](#-ziel)
- [Mehr über mich](#-mehr-über-mich)
- [Nächste Schritte](#-nächste-schritte)
- [Fortschritt](#-fortschritt)
- [Beispiele](#-beispiel-hello-world-extension)
- [AL-Vokabelliste](#-meine-al-vokabelliste)
- [DataClassification](#-meine-übersicht-zur-dataclassification)

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
| `business-central-learning` | Beispielprojekt mit AL-Grundlagen, Tabellen, Pages und Reports |

## 🎯 Ziel
Ich möchte praxisnah lernen, wie man mit AL entwickelt – und langfristig eigene Erweiterungen für Business Central schreiben.

## 🔗 Mehr über mich
- [LinkedIn-Profil](https://www.linkedin.com/in/axel-hörnschemeyer/)
- 📁 Dieses Repository begleitet meinen Lernweg seit Oktober 2025.

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
- ✅ Anfrage an Microsoft gestellt für Teilname am 365 Developer-Programm
- 🔜 Warte auf Bestätigung
- 🔜 Erste AL-Extension kompiliert  
- 🔜 PageExtension mit Action-Button in Arbeit  
- 🔜 Veröffentlichung erster Demo-Extension

## 📘 Meine AL-Vokabelliste

Ich dokumentiere zentrale Begriffe aus der AL-Entwicklung in einer eigenen Datei – als persönliches Nachschlagewerk für mich und andere Einsteiger.

➡️ [Zur AL-Vokabelliste](AL-Vokabelliste.md)

## 🔐 Meine Übersicht zur DataClassification

Ich dokumentiere alle verfügbaren Werte für die Eigenschaft `DataClassification` in AL – inklusive Beschreibung und Beispielen.

➡️ [Zur AL-DataClassification-Datei](AL-DataClassification.md)

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
```

## 🧪 Beispiel: CustomerValidation Extension

Dieses Beispiel zeigt, wie du eine einfache Validierung beim Erfassen eines Kunden implementierst. Die Erweiterung prüft, ob der Kundenname mindestens drei Zeichen lang ist – andernfalls wird ein Fehler ausgelöst.

```al
tableextension 50101 CustomerValidationExtension extends Customer
{
    trigger OnBeforeInsert()
    var
        MinLength: Integer;
    begin
        MinLength := 3;
        if StrLen(Name) < MinLength then
            Error('Der Kundenname muss mindestens %1 Zeichen lang sein.', MinLength);
    end;
}
```

📌 Dieses Beispiel demonstriert, wie man Geschäftslogik direkt im Datenmodell verankert – eine typische Aufgabe bei der Anpassung von Business Central.

    > Hinweis: Da ich aktuell keine Docker-Sandbox nutzen kann, wurde der Code nicht ausgeführt – aber vollständig vorbereitet.

---

Danke fürs Vorbeischauen!

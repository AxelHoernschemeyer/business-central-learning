# 🔐 AL DataClassification Übersicht

In AL für Microsoft Dynamics 365 Business Central muss jedes neue Feld mit einer `DataClassification` versehen werden. Diese Eigenschaft kennzeichnet, wie sensibel die Daten sind – z. B. im Hinblick auf Datenschutz, DSGVO und Systemverhalten.

---

📌 Hinweise
Die Klassifizierung ist verpflichtend für jedes neue Feld in AL

Sie hilft Business Central, sensible Daten korrekt zu behandeln – z. B. bei DSGVO-Anfragen

Du kannst vorübergehend ToBeClassified verwenden, solltest aber später eine passende Klassifizierung wählen

---

## 📋 Übersicht der verfügbaren Werte

| Wert                             | Beschreibung |
|----------------------------------|--------------|
| `CustomerContent`                | Daten, die direkt mit Kunden zu tun haben – z. B. Name, Adresse, E-Mail |
| `EndUserIdentifiableInformation`| Daten, die eine Person direkt identifizieren können – z. B. Benutzername, Login |
| `SystemMetadata`                | Technische Systemdaten – z. B. Zeitstempel, Änderungsprotokolle |
| `ToBeClassified`                | Platzhalter, wenn die Klassifizierung noch nicht festgelegt wurde |
| `OrganizationIdentifiableInformation` | Daten, die eine Organisation identifizieren – z. B. Firmenname, USt-ID |
| `AccountData`                   | Finanzdaten – z. B. Kontonummern, Buchungsposten |
| `ProductData`                   | Produktbezogene Daten – z. B. Artikelbeschreibung, Lagerbestand |
| `Public`                        | Öffentlich zugängliche Daten – z. B. Länderkennzeichen, Währungen |

---

## 🧪 Beispiel für ein klassifiziertes Feld

```al
field(50100; MyCustomFlag; Boolean)
{
    Caption = 'Mein Kennzeichen';
    DataClassification = CustomerContent;
}
´´´
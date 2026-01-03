AL-DateFormulas und CalcDate

In AL (der Programmiersprache von Microsoft Dynamics 365 Business Central) sind Datumsformeln ein kompaktes Mittel, um relative Zeiträume zu berechnen. Sie werden häufig in Kombination mit CalcDate() oder in Filterfunktionen wie SetRange() verwendet.

🔍 Was ist eine DateFormula?

Eine DateFormula ist ein Textstring, der einen relativen Zeitraum beschreibt. Beispiele:

'<-1D>' → 1 Tag zurück
'<+1M>' → 1 Monat vorwärts
'<CY>' → Beginn des aktuellen Jahres

Diese Formeln werden in spitzen Klammern geschrieben und können mit CalcDate() ausgewertet werden.

🧠 Syntaxregeln

D = Tage (Day)
W = Wochen (Week)
M = Monate (Month)
Y = Jahre (Year)
C = „Current“ (aktueller Zeitraum)
+ = vorwärts
- = rückwärts

Beispiel:

CalcDate('<-12M>', WorkDate()); // ergibt das Datum vor 12 Monaten

📅 Häufige DateFormulas

Formel          Bedeutung
'<-1D>'         1 Tag zurück
'<+1D>'         1 Tag vorwärts
'<-1W>'         1 Woche zurück
'<+1W>'         1 Woche vorwärts
'<-1M>'         1 Monat zurück
'<-12M>'        12 Monate zurück
'<+1M>'         1 Monat vorwärts
'<-1Y>'         1 Jahr zurück
'<+1Y>'         1 Jahr vorwärts
'<CM>'          Erster Tag des aktuellen Monats
'<CW>'          Erster Tag der aktuellen Woche
'<CY>'          Erster Tag des aktuellen Jahres

🧩 Anwendung mit CalcDate()

var
    StartDate: Date;
begin
    StartDate := CalcDate('<-6M>', WorkDate());
end;

Dies ergibt ein Datum, das sechs Monate vor dem aktuellen Arbeitsdatum liegt.

🔁 Anwendung mit SetRange()

Customer.SetRange("Date Filter", CalcDate('<-12M>', WorkDate()), WorkDate());

Filtert alle Kunden mit Daten im Zeitraum der letzten 12 Monate.

⚠️ Typische Fehlerquellen

❌ CalcDate('<-12M>') → fehlt das Bezugsdatum
❌ FieldCaption("Date Filter") → funktioniert nur über Rec.FieldCaption(...)
❌ Leerzeichen innerhalb der Formel ('< -12M>') → ungültig

✅ Best Practices

Immer WorkDate() oder ein anderes Bezugsdatum mitgeben
Formeln in Konstanten oder Labels auslagern, wenn sie mehrfach verwendet werden
Für komplexe Zeiträume lieber mit Date2DMY() oder DateTime arbeiten

📚 Weitere Quellen

Microsoft Learn: DateFormula Data Type
AL Language Reference: CalcDate, SetRange, WorkDate
Diese Übersicht hilft dir, DateFormulas gezielt und fehlerfrei einzusetzen – ob in Pages, Reports oder Tabellen.
# Vergleich: eHealth Suisse Konzept eNotfallpass vs. CH EMR Implementation Guide

**Quelle Konzept:** [Konzept eNotfallpass DE (PDF)](https://www.e-health-suisse.ch/payload/api/documents/file/Konzept_eNotfallpass_DE.pdf)  
**Quelle IG:** [CH EMR (R4)](http://fhir.ch/ig/ch-emr) - Repository `ch.fhir.ig.ch-emr`, Version 0.1.0  
**Datum:** 2026-03-31

---

## Abweichungen und Fehler

| # | Kategorie | Konzept eNotfallpass (erwartet) | CH EMR IG (implementiert) | Typ | Schweregrad |
|---|-----------|-------------------------------|--------------------------|-----|-------------|
| 1 | **Advance Directive - falsches Profil** | Patientenverfuegungen sollen mit spezifischem Advance-Directive-Profil referenziert werden | `Composition.fsh:63` referenziert `ChEmrDocumentReference` statt `ChEmrDocumentReferenceAdvanceDirective`. Das dedizierte Profil existiert, wird aber in der Composition nicht verwendet. Dadurch wird das spezifische ValueSet `ch-emr-advance-directive-type-vs` nicht erzwungen. | Fehler | Hoch |
| 2 | **Blutgruppe fehlt** | Das Konzept definiert die Blutgruppe als relevanten Inhaltsbaustein des eNotfallpass | Kein Profil, keine Section, kein ValueSet und kein Beispiel fuer Blutgruppe vorhanden. Komplett fehlend. | Abweichung | Hoch |
| 3 | **Reanimationsstatus - zu einfaches Modell** | Das Konzept sieht differenzierte Reanimationswuensche vor (z.B. bedingte DNAR-Verfuegungen, Teilentscheidungen) | `ResuscitationStatus.fsh` modelliert nur `valueBoolean` (true/false). UC3 beschreibt eine bedingte Verfuegung ("Reanimation nur wenn Kind gerettet werden kann"), die im Boolean-Modell nicht abgebildet werden kann. | Fehler | Hoch |
| 4 | **Vertretungsperson / Vorsorgeauftrag** | Das Konzept sieht die Dokumentation von bevollmaechtigten Vertretungspersonen und Vorsorgeauftraegen vor | Keinerlei Unterstuetzung. Weder im RelatedPerson-Profil (kein spezieller Relationship-Code fuer "Bevollmaechtigte/r") noch als separate Sektion oder Extension. | Abweichung | Mittel |
| 5 | **Koerpergroesse / Koerpergewicht** | Das Konzept listet Vital Signs / Koerpermasse als optionalen Bestandteil | Keine Profile, Sections oder Beispiele fuer Gewicht, Groesse oder BMI vorhanden. | Abweichung | Niedrig |
| 6 | **Versicherungsangaben** | Das Konzept sieht Angaben zur Krankenversicherung vor (Versicherername, Policennummer) | Nur die Versichertenkartennummer als Patient-Identifier (geerbt von CH Core). Kein Coverage-Profil, keine Insurance-Section, keine Organisation fuer den Versicherer. | Abweichung | Mittel |
| 7 | **Organspende** | Das Konzept sieht den Organspendeausweis als eigenstaendigen Bereich vor | Nur als Dokumenttyp-Code (`772790007 "Organ donor card"`) im generischen `sectionOtherDocuments`. Keine strukturierte Abbildung von Praeferenzen (welche Organe, Bedingungen etc.). | Abweichung | Niedrig |
| 8 | **Rechtschreibfehler: "Cognative"** | - | `VS_CognativeDisabilityTypes.fsh`: ValueSet-Name `ChEmrCognativeDisabilityTypesVS`, Id `ch-emr-cognative-disability-types-vs` und Titel verwenden "Cognative" statt korrekt "Cognitive". Der Fehler ist in den FHIR-Artefakt-IDs (breaking change bei Korrektur). | Fehler | Mittel |
| 9 | **Rechtschreibfehler: Dateiname "Pysical"** | - | `VS_PysicalDisabilityTypes.fsh`: Dateiname fehlt das 'h' ("Pysical" statt "Physical"). Inhalt korrekt geschrieben. | Fehler | Niedrig |
| 10 | **Advance Directive UC4 - falsches Profil** | Patientenverfuegung soll als AdvanceDirective-Typ referenziert werden | `UC4_DocumentReference.fsh` verwendet `InstanceOf: ChEmrDocumentReference` statt `ChEmrDocumentReferenceAdvanceDirective` fuer die Patientenverfuegung in UC4. Inkonsistent mit UC3 und EX-Beispielen. | Fehler | Mittel |
| 11 | **Patientensprache nicht verpflichtend** | Das Konzept sieht die Kommunikationssprache als essenzielles Datenelement vor (Sprachbarrieren als Kernziel) | `Patient.communication.language` ist nur `MS` (Must-Support) aber optional. Keine Kardinalitaet 1..*, obwohl Sprachbarrieren im Einleitungstext als Kernanwendungsfall genannt werden. | Abweichung | Mittel |
| 12 | **Care Team Section - fehlende Organization** | Das Konzept sieht behandelnde Fachpersonen inkl. zugehoeriger Organisation vor | `sectionCareTeam` enthaelt nur Slices fuer `Practitioner` und `PractitionerRole`, aber keinen expliziten Slice fuer `Organization`. Die Organisation ist nur indirekt ueber PractitionerRole erreichbar. | Abweichung | Niedrig |
| 13 | **Tippfehler in Beispiel** | - | `EX_Composition.fsh:91`: "Organspendeausweis ist im Protmonnaie" - sollte "Portemonnaie" heissen. | Fehler | Niedrig |
| 14 | **Franzoesische Anwendungsfaelle leer** | Das Konzept existiert auch auf Franzoesisch, der IG soll zweisprachig sein | `usecase-french.md` ist eine leere Datei. Keine franzoesischen Anwendungsfaelle implementiert. | Abweichung | Niedrig |
| 15 | **index.md Profil-Tabelle gemischte Sprache** | Konsistente Sprache erwartet | Die Profiltabelle in `index.md` verwendet "Profil" und "Beschreibung" als Spaltentitel (deutsch), aber alle Beschreibungen sind englisch. | Abweichung | Niedrig |

---

## Zusammenfassung

- **4 Fehler mit hoher/mittlerer Schwere**: Falsches Profil in Advance Directive Section (#1), unzureichendes Reanimationsmodell (#3), Tippfehler in FHIR-Artefakt-IDs (#8), inkonsistentes Beispiel UC4 (#10)
- **3 signifikante inhaltliche Luecken**: Blutgruppe (#2), Vertretungsperson/Vorsorgeauftrag (#4), Versicherungsangaben (#6)
- **Mehrere kleinere Abweichungen**: Fehlende Vital Signs, eingeschraenkte Organspende-Modellierung, optionale Sprachpflicht, leere FR-Seite

Die kritischsten Punkte fuer eine Korrektur sind **#1** (falscher Profil-Verweis in der Composition), **#3** (Boolean-Modell fuer Reanimation unzureichend) und **#2** (fehlende Blutgruppe).

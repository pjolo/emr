# Vergleich: eNotfallpass-Konzept (eHealth Suisse) vs. CH EMR Implementation Guide

> Erstellt am 20.03.2026  
> Grundlage: [Konzept eNotfallpass (DE)](https://www.e-health-suisse.ch/payload/api/documents/file/Konzept_eNotfallpass_DE.pdf) und das CH EMR Repository (Stand: aktueller Branch)

---

## 1. Strukturelle / Konfigurationsfehler

| Status | # | Bereich | Fehler / Abweichung | Datei | Empfohlene Anpassung |
|---|---|---------|---------------------|-------|---------------------|
| erledigt    | 1 | sushi-config.yaml | `id: ch.fhir.ig.ch-ig` und `canonical: http://fhir.ch/ig/ch-ig` sind noch vom Template (ch-ig), nicht EMR-spezifisch | `sushi-config.yaml:1-2` | Anpassen auf `ch.fhir.ig.ch-emr` und `http://fhir.ch/ig/ch-emr` |
| erledigt   | 2 | sushi-config.yaml | `description` ist ein Platzhalter: "Implementation Guide CH IG (R4) for ..." | `sushi-config.yaml:5` | Korrekte Beschreibung einfuegen, z.B. "FHIR Implementation Guide for the Swiss Electronic Emergency Record (eNotfallpass)" |
|  erledigt  | 3 | sushi-config.yaml | `version: 1.2.3` mit Kommentar "1.2.2 published in May 2025" - passt nicht zu einem neuen IG | `sushi-config.yaml:11` | Version auf `0.1.0` o.ae. setzen (STU Ballot) |

---

## 2. Dokumentationsfehler (index.md)

|Status| # | Bereich | Fehler / Abweichung | Datei | Empfohlene Anpassung |
|---|---|---------|---------------------|-------|---------------------|
| erledigt  | 4 | index.md | Tippfehler: "health **lieracy**" statt "health **literacy**" | `index.md:2` | Korrigieren zu "literacy" |
| erledigt  | 5 | index.md | Tippfehler: "**clinicel** data" statt "**clinical** data" | `index.md:3` | Korrigieren zu "clinical" |
| erledigt  | 6 | index.md | Tippfehler: "**diognose**" statt "**diagnoses**" | `index.md:3` | Korrigieren zu "diagnoses" |
| erledigt  | 7 | index.md Profiltabelle | ChEmrRelatedPerson Parent als "CH IPS Patient" angegeben | `index.md:51` | Korrigieren zu "CH Core RelatedPerson" (FSH: `$ChCoreRelatedPerson`) |
| erledigt  | 8 | index.md Profiltabelle | ChEmrPractitioner Parent als "CH Core Practitioner" angegeben | `index.md:52` | Korrigieren zu "CH IPS Practitioner" (FSH: `$CHIPSPractitioner`) |
| erledigt  | 9 | index.md Profiltabelle | ChEmrDevice Parent als "CH IPS Device" angegeben | `index.md:60` | Korrigieren zu "Device" (Basis FHIR R4, FSH: `Parent: Device`) |
|   | 10 | index.md Profiltabelle | Spezialisierte Profile fehlen in der Tabelle: ChEmrObservationDisability, ChEmrObservationRiskFactors, ChEmrObservationResuscitationStatus, ChEmrPractitionerRole, ChEmrOrganization | `index.md:46-60` | Alle definierten Profile in der Tabelle auffuehren |

---

## 3. Terminologie-Fehler (ValueSets)

|Status| # | Bereich | Fehler / Abweichung | Datei | Empfohlene Anpassung |
|---|---|---------|---------------------|-------|---------------------|
|   | 11 | VS InfectiousRiskFactors | Code `$sct#86406008` mit Display "Total hip replacement prosthesis" ist ein Implantat-Code, kein infektioeser Risikofaktor. Copy-Paste-Fehler. | `VS_InfectiousRiskFactors.fsh:12` | Durch korrekten Code ersetzen, z.B. einen passenden infektioesen Risikofaktor (HIV, MRSA, Tuberkulose etc.) |
|   | 12 | VS InfectiousRiskFactors | Display von Code `713351000` hat ein fuehrendes Leerzeichen: `" Multidrug-resistant bacteria"` | `VS_InfectiousRiskFactors.fsh:13` | Leerzeichen entfernen: `"Multidrug-resistant bacteria"` |
|   | 13 | VS InfectiousRiskFactors | Das ValueSet heisst "Infectious Disease Risk Factors", aber das Konzept spricht allgemein von "Risikofaktoren" (nicht nur infektioese). Laut Konzept gehoeren auch Schwangerschaft, Adipositas, Rauchen etc. dazu | `VS_InfectiousRiskFactors.fsh` | Umbenennen oder erweitern zu allgemeinen Risikofaktoren gemaess Konzept |
|   | 14 | VS DisabilityTypes | Codes `719232003` "Difficulty walking" und `228158008` "Walking disability" sind semantisch redundant | `VS_DisabilityTypes.fsh:12,15` | Pruefen ob beide noetig sind; ggf. einen entfernen oder durch weitere Behinderungsarten (z.B. kognitive, sprachliche) ergaenzen |
|   | 15 | VS ImplantType | Nur 4 Codes (Pacemaker, Defi-Leads, Hueftprothese, generisch). Das Konzept nennt mehr Implantattypen (Cochlea-Implantate, Knieprothesen, Stents etc.) | `VS_ImplantType.fsh` | ValueSet erweitern oder auf bestehende SNOMED-Hierarchie (Descendant of "implant") verweisen |

---

## 4. Profil- / Modellierungsfehler

|Status| # | Bereich | Fehler / Abweichung | Datei | Empfohlene Anpassung |
|---|---|---------|---------------------|-------|---------------------|
|   | 16 | Composition - sectionResuscitation | Verwendet LOINC `75320-2` "Advance directive" als Code. Das ist derselbe semantische Bereich wie sectionAdvanceDirectives (`42348-3`). Reanimationsstatus ist kein "Advance directive". | `Composition.fsh:38` | Eigenen LOINC-Code waehlen, z.B. `89545-2` "Resuscitation status" oder SNOMED-basierten Code |
|   | 17 | Composition - sectionResuscitation | Entry referenziert `ChEmrObservation` (generisch) statt `ChEmrObservationResuscitationStatus` (spezialisiert) | `Composition.fsh:43` | Aendern zu `only Reference(ChEmrObservationResuscitationStatus)` |
|   | 18 | Composition - sectionRiskFactors | Entry referenziert `ChEmrObservation` (generisch) statt `ChEmrObservationRiskFactors` (spezialisiert) | `Composition.fsh:51` | Aendern zu `only Reference(ChEmrObservationRiskFactors)` |
|   | 19 | Composition - sectionDisability | Entry referenziert `ChEmrObservation` (generisch) statt `ChEmrObservationDisability` (spezialisiert) | `Composition.fsh:75` | Aendern zu `only Reference(ChEmrObservationDisability)` |
|   | 20 | Composition - sectionCareTeam | Entry referenziert nur `ChEmrPractitioner`, aber das Konzept sieht PractitionerRole vor (Rolle + Organisation) | `Composition.fsh:35` | Zusaetzlichen Entry-Slice fuer `ChEmrPractitionerRole` hinzufuegen |
|   | 21 | ChEmrDevice | Parent ist Basis-FHIR `Device`, nicht CH IPS Device. Dadurch fehlen CH-IPS-Constraints (UDI, patient etc.) | `Device.fsh:2` | Parent auf `$CHIPSDevice` aendern |
|   | 22 | Observation-Profile | ChEmrObservationDisability, ChEmrObservationRiskFactors, ChEmrObservationResuscitationStatus haben alle `Parent: Observation` (Basis). Keine `subject`-Constraint, kein `status`-Constraint. | Diverse Observation-FSH | Mindestens `status` und `subject` mit MS-Flag und Referenz auf ChEmrPatient versehen |
|   | 23 | ChEmrObservationResuscitationStatus | Reanimationsstatus als `valueBoolean` (true/false) ist zu vereinfacht. Konzept kennt Abstufungen: "volle Reanimation", " begrenzte Reanimation", "keine Reanimation" | `ResuscitationStatus.fsh:8` | `valueCodeableConcept` mit ValueSet fuer Reanimationsoptionen verwenden |

---

## 5. Fehlende Inhalte gegenueber dem Konzept

|Status| # | Bereich | Fehlend im IG | Konzept-Anforderung | Empfohlene Anpassung |
|---|---|---------|---------------|---------------------|---------------------|
|   | 24 | Blutgruppe | Kein Profil / keine Section fuer Blutgruppe | Konzept listet Blutgruppe als relevante Information | Section und Observation-Profil fuer Blutgruppe ergaenzen |
|   | 25 | Koerpergroesse/Gewicht | Keine Vitaldaten-Profile | Konzept nennt Koerpergroesse und -gewicht als relevante Daten | Observation-Profile fuer Vitalzeichen hinzufuegen (CH IPS Vital Signs) |
|   | 26 | Sprache des Patienten | Keine explizite Handhabung der Kommunikationssprache des Patienten | Konzept betont Sprachbarrieren als Anwendungsfall | `Patient.communication.language` als MS markieren |
|   | 27 | Organspende | Nur als DocumentReference in "Other Documents" | Konzept sieht Organspende-Status als eigenstaendige Information | Ggf. eigenes Profil oder explizite Referenzierung vorsehen |
|   | 28 | Schwangerschaft | Keine eigene Section in der Composition | Konzept listet Schwangerschaft als eigenen Bereich; IG erwaehnt es in der Content-Liste | Section fuer Schwangerschaft in der Composition ergaenzen (IPS hat `sectionPregnancyHx`) |
|   | 29 | Notfallkontakt-Typ | RelatedPerson.relationship hat kein Binding zu einem ValueSet | Konzept unterscheidet: Ehepartner, Eltern, Betreuer, Beistand etc. | ValueSet fuer Kontaktbeziehung erstellen und binden |
|   | 30 | Funktionelle Einschraenkungen | Nur Behinderung abgedeckt, nicht funktionelle Einschraenkungen | Konzept nennt auch funktionelle Einschraenkungen (Mobilitaet, Kognition, Sensorik) | Disability-Section/ValueSet erweitern |

---

## 6. Sonstige Qualitaetsprobleme

|Status| # | Bereich | Problem | Datei | Empfohlene Anpassung |
|---|---|---------|---------|-------|---------------------|
|   | 31 | Description-Texte | Inkonsistente Schreibweise "eEmergency Record" in DocumentReference und MedicationStatement | `DocumentReference.fsh:5`, `MedicationStatement.fsh` | Vereinheitlichen zu "Emergency Record" |
|   | 32 | Description-Texte | "Profil" (deutsch) statt "Profile" (englisch) in mehreren Beschreibungen | Diverse FSH-Dateien | Konsistent auf Englisch |
|   | 33 | Composition | `sectionEmergencyContacts` ist `1..1` (Pflicht), aber `sectionCareTeam` ist `0..1`. Laut Konzept sollte behandelnde GFP ebenfalls Pflicht sein | `Composition.fsh:9` | Kardinalitaet von sectionCareTeam auf `1..1` pruefen |
|   | 34 | Konzept-Referenz | Die URL zum franzoesischen Konzept-PDF in index.md zeigt auf eine andere URL-Struktur als die deutsche Version | `index.md:6` | URLs verifizieren und aktualisieren |

---

## Zusammenfassung der kritischsten Punkte

| Prioritaet | Punkte | Beschreibung |
|------------|--------|--------------|
| **Kritisch** | 1-3 | sushi-config.yaml noch vom Template - IG-Identitaet ist falsch |
| **Kritisch** | 11 | Copy-Paste-Fehler: Implantat-Code im Risikofaktoren-ValueSet |
| **Hoch** | 17-19 | Composition referenziert generische statt spezialisierte Observation-Profile |
| **Hoch** | 23 | Reanimationsstatus als Boolean ist zu vereinfacht gegenueber dem Konzept |
| **Hoch** | 24, 28 | Fehlende Sections fuer Blutgruppe und Schwangerschaft |
| **Mittel** | 4-6 | Tippfehler in der Dokumentation |
| **Mittel** | 7-9 | Falsche Parent-Angaben in der Profiltabelle |
| **Mittel** | 21 | Device-Profil basiert auf Basis-FHIR statt CH IPS |
| **Niedrig** | 31-32 | Inkonsistente Beschreibungstexte |

Instance: UC3-Composition-emr-LauraWeber
InstanceOf: ChEmrComposition
Usage: #example
Title: "UC3-Composition-emr-LauraWeber"
Description: "Composition for the emergency record for Laura Weber"

* language = #de-CH
* confidentiality.extension.url = "http://fhir.ch/ig/ch-core/StructureDefinition/ch-ext-epr-confidentialitycode"
* confidentiality.extension.valueCodeableConcept = $sct#17621005 "Normal (qualifier value)"
* confidentiality = #N

* identifier.system = "urn:ietf:rfc:3986"
* identifier.value = "urn:uuid:7afc1e97-67f8-49a8-91f5-46af596d0609"

* status = #final
* type = $loinc#60591-5 "Patient summary Document"
* category = $loinc#LP173421-1 "Report"

* subject = Reference(UC3-Patient-LauraWeber)
* date = "2025-09-10T15:00:00+02:00"

* author = Reference(UC3-PractitionerRole-Hausarzt)
* title = "Elektronischer Notfallpass - Laura Weber (Schwangerschaft)"

// Related person section
* section[sectionEmergencyContacts].title = "Notfallkontakte"
* section[sectionEmergencyContacts].text.status = #generated
* section[sectionEmergencyContacts].text.div = "<div xmlns='http://www.w3.org/1999/xhtml'><p><strong>Notfallkontakt:</strong></p><ul><li><strong>Michael Weber (Ehemann)</strong></li><li>Telefon: +41 44 567 89 01</li><li>Mobil: +41 79 567 89 01</li></ul></div>"
* section[sectionEmergencyContacts].entry[relatedPerson][0] = Reference(UC3-RelatedPerson-MichaelWeber)

// Care Team section
* section[sectionCareTeam].title = "Behandlungsteam"
* section[sectionCareTeam].text.status = #generated
* section[sectionCareTeam].text.div = "<div xmlns='http://www.w3.org/1999/xhtml'><p><strong>Behandelnde Ärzte:</strong></p><ul><li><strong>Dr. med. Maria Semmelbruch</strong> - Gynäkologin<br/>Frauenklinik Kantonsspital<br/>GLN: 7601000789012<br/>Telefon: +41 44 345 67 89</li><li><strong>Dr. med. Hans Müller</strong> - Hausarzt<br/>Hausarztpraxis<br/>GLN: 7601000234567<br/>Telefon: +41 44 234 56 78</li></ul></div>"
* section[sectionCareTeam].entry[practitioner][0] = Reference(UC3-Practitioner-Hausarzt)


* section[sectionCareTeam].entry[practitioner][+] = Reference(UC3-Practitioner-DrSemmelbruch)

// Resuscitation section
* section[sectionResuscitation].title = "Reanimation"
* section[sectionResuscitation].code = $loinc#75320-2 "Advance directive"
* section[sectionResuscitation].text.status = #generated
* section[sectionResuscitation].text.div = "<div xmlns='http://www.w3.org/1999/xhtml'><p>Reanimationsstatus:</p><ul><li>Vollumfängliche Reanimation gewünscht</li></ul></div>"
* section[sectionResuscitation].entry[observation][0] = Reference(UC3-Resuscitation)

// Medication section
* section[sectionMedications].title = "Aktuelle Medikation"
* section[sectionMedications].code = $loinc#10160-0 "History of Medication use Narrative"
* section[sectionMedications].text.status = #generated
* section[sectionMedications].text.div = "<div xmlns='http://www.w3.org/1999/xhtml'><p>Aktuelle Medikation:</p><ul><li>Metformin 1000 mg zweimal täglich zu den Mahlzeiten (seit 15.06.2015)</li></ul></div>"
* section[sectionMedications].text.div = "<div xmlns='http://www.w3.org/1999/xhtml'><p>Keine Medikationsinformationen verfügbar.</p></div>"
* section[sectionMedications].emptyReason = $list-empty-reason#unavailable "Information not available"

// Immunization section

// Allergies section
* section[sectionAllergies].title = "Allergien und Unverträglichkeiten"
* section[sectionAllergies].text.status = #generated
* section[sectionAllergies].text.div = "<div xmlns='http://www.w3.org/1999/xhtml'><p>WICHTIGE ALLERGIE:</p><ul><li><strong>Jodhaltige Kontrastmittel</strong></li><li><strong>Reaktion:</strong> Hautausschlag, Juckreiz, leichte Atembeschwerden</li><li><strong>Schweregrad:</strong> Moderat</li><li><strong>Erstmals aufgetreten:</strong> 2022</li></ul></div>"
* section[sectionAllergies].entry[allergyOrIntolerance][0] = Reference(UC3-AllergyIntolerance-Contrast)

// Risk factor section

// Problem list section
* section[sectionProblems].title = "Probleme und Diagnosen"
* section[sectionProblems].code = $loinc#11450-4 "Problem list - Reported"
* section[sectionProblems].text.status = #generated
* section[sectionProblems].text.div = "<div xmlns='http://www.w3.org/1999/xhtml'><p>Aktive Probleme:</p><ul><li>Diabetes mellitus Typ 2 (seit 15.06.2015) - gut kontrolliert</li></ul></div>"
* section[sectionProblems].text.div = "<div xmlns='http://www.w3.org/1999/xhtml'><p>Keine Diagnosen bekannt.</p></div>"
* section[sectionProblems].emptyReason = $list-empty-reason#unavailable "Information not available"

// Advance directive and emergency medical directive section
* section[sectionAdvanceDirectives].title = "Patientenverfügung"
* section[sectionAdvanceDirectives].text.status = #generated
* section[sectionAdvanceDirectives].text.div = "<div xmlns='http://www.w3.org/1999/xhtml'><p>Patientenverfügung vorhanden:</p></div>"
* section[sectionAdvanceDirectives].entry[advanceDirective][0] = Reference(UC3-DocumentReference)

// Document references section

// Medical devices section

// Pregnancy section
* section[sectionPregnancyHx].title = "Schwangerschaftsstatus"
* section[sectionPregnancyHx].text.status = #generated
* section[sectionPregnancyHx].text.div = "<div xmlns='http://www.w3.org/1999/xhtml'><p><strong>AKTUELLE SCHWANGERSCHAFT:</strong></p><ul><li>32. Schwangerschaftswoche</li></ul></div>"
* section[sectionPregnancyHx].entry[pregnancyStatus][0] = Reference(UC3-Observation-Pregnancy)

// Disability section


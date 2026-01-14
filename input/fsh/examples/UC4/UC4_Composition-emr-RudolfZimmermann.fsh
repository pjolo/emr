Instance: UC4-Composition-emr-RudolfZimmermann
InstanceOf: ChEmrComposition
Usage: #example
Title: "UC4-Composition-emr-RudolfZimmermann"
Description: "Composition for Rudolf Zimmermann's emergency record"

* language = #de-CH
* confidentiality.extension.url = "http://fhir.ch/ig/ch-core/StructureDefinition/ch-ext-epr-confidentialitycode"
* confidentiality.extension.valueCodeableConcept = $sct#17621005 "Normal (qualifier value)"
* confidentiality = #N

* identifier.system = "urn:ietf:rfc:3986"
* identifier.value = "urn:uuid:7afc1e97-67f8-49a8-91f5-46af596d0609"

* status = #final
* type = $loinc#60591-5 "Patient summary Document"
* category = $loinc#LP173421-1 "Report"

* subject = Reference(UC4-Patient-RudolfZimmermann)
* date = "2025-09-10T16:00:00+02:00"

* author = Reference(UC4-PractitionerRole-Hausarzt)
* title = "Elektronischer Notfallpass - Rudolf Zimmermann (Multimorbidität)"

// RelatedPerson section
* section[sectionEmergencyContacts].title = "Notfallkontakte"
* section[sectionEmergencyContacts].text.status = #generated
* section[sectionEmergencyContacts].text.div = "<div xmlns='http://www.w3.org/1999/xhtml'><p>Notfallkontakt: Elisabeth Zimmermann (Tochter) +41 31 456 78 90</p></div>"
* section[sectionEmergencyContacts].entry[relatedPerson][0] = Reference(UC4-RelatedPerson-ElisabethZimmermann)

// Care Team section
* section[sectionCareTeam].title = "Behandlungsteam"
* section[sectionCareTeam].code = $loinc#85847-2 "Patient Care team information"
* section[sectionCareTeam].text.status = #generated
* section[sectionCareTeam].text.div = "<div xmlns='http://www.w3.org/1999/xhtml'><p>Behandelnde Ärzte:</p><ul><li>Dr. med. Klaus Weber - Hausarzt (GLN: 7601000789012)</li></ul></div>"
* section[sectionCareTeam].entry[practitioner][0] = Reference(UC4-Practitioner-DrWeber)

// Resuscitation section


// Medication section
* section[sectionMedications].title = "Aktuelle Medikation"
* section[sectionMedications].code = $loinc#10160-0 "History of Medication use Narrative"
* section[sectionMedications].text.status = #generated
* section[sectionMedications].text.div = "<div xmlns='http://www.w3.org/1999/xhtml'><p><strong>Aktuelle Medikation:</strong></p><ul><li>Ramipril 5mg morgens (Herzinsuffizienz)</li><li>Metoprolol 50mg 2x täglich (Beta-Blocker)</li><li>Furosemid 40mg morgens (Diuretikum)</li></ul></div>"
* section[sectionMedications].entry[medicationStatementOrRequest][0] = Reference(UC4-MedicationStatement-Ramipril)
* section[sectionMedications].entry[medicationStatementOrRequest][+] = Reference(UC4-MedicationStatement-Metoprolol)
* section[sectionMedications].entry[medicationStatementOrRequest][+] = Reference(UC4-MedicationStatement-Furosemid)
* section[sectionMedications].entry[medicationStatementOrRequest][+] = Reference(UC4-MedicationStatement-MetforminRudolf)

// Immunization section

// Allergies section
* section[sectionAllergies].title = "Allergien und Unverträglichkeiten"
* section[sectionAllergies].text.status = #generated
* section[sectionAllergies].text.div = "<div xmlns='http://www.w3.org/1999/xhtml'><p><strong>⚠️ WICHTIGE ALLERGIE:</strong></p><ul><li><strong>Jodhaltige Kontrastmittel</strong></li><li><strong>Reaktion:</strong> Hautausschlag, Juckreiz, leichte Atembeschwerden</li><li><strong>Schweregrad:</strong> Moderat</li><li><strong>Erstmals aufgetreten:</strong> 2022</li></ul><p><strong>⚠️ KEINE JODHALTIGEN KONTRASTMITTEL VERWENDEN!</strong></p><p><strong>Alternative:</strong> MRT ohne Kontrastmittel oder nicht-jodhaltige Kontrastmittel verwenden</p></div>"
* section[sectionAllergies].text.div = "<div xmlns='http://www.w3.org/1999/xhtml'><p>Keine Allergien bekannt.</p></div>"
* section[sectionAllergies].emptyReason = $list-empty-reason#unavailable "Information not available"

// Risk factor section

// Problem list section
* section[sectionProblems].title = "Probleme und Diagnosen"
* section[sectionProblems].code = $loinc#11450-4 "Problem list - Reported"
* section[sectionProblems].text.status = #generated
* section[sectionProblems].text.div = "<div xmlns='http://www.w3.org/1999/xhtml'><p><strong>Aktive Probleme (Multimorbidität):</strong></p><ul><li>Chronische Herzinsuffizienz NYHA III (seit 2018)</li><li>Permanentes Vorhofflimmern (seit 2019)</li><li>Chronische Niereninsuffizienz Stadium 3b (seit 2020)</li><li>Diabetes mellitus Typ 2 mit Nephropathie (seit 2010)</li></ul></div>"
* section[sectionProblems].entry[problem][0] = Reference(UC4-Condition-HeartFailure)
* section[sectionProblems].entry[problem][+] = Reference(UC4-Condition-AtrialFibrillation)
* section[sectionProblems].entry[problem][+] = Reference(UC4-Condition-ChronicKidneyDisease)
* section[sectionProblems].entry[problem][+] = Reference(UC4-Condition-DiabetesRudolf)

// Advance directive and emergency medical directive section
* section[sectionAdvanceDirectives].title = "Patientenverfügung"
* section[sectionAdvanceDirectives].text.status = #generated
* section[sectionAdvanceDirectives].text.div = "<div xmlns='http://www.w3.org/1999/xhtml'><p>Patientenverfügung vorhanden</p></div>"
* section[sectionAdvanceDirectives].entry[advanceDirective][0] = Reference(UC4-DocumentReference)

// Document references section

// Medical devices section
* section[sectionMedicalDevices].title = "Medizinische Geräte"
* section[sectionMedicalDevices].code = $loinc#46264-8 "History of medical device use"
* section[sectionMedicalDevices].text.status = #generated
* section[sectionMedicalDevices].text.div = "<div xmlns='http://www.w3.org/1999/xhtml'><p>Implantate:</p><ul><li>Hüftgelenk-Totalendoprothese links (2018)</li><li>Hersteller: Zimmer Biomet Taperloc</li></ul></div>"
* section[sectionMedicalDevices].entry[deviceStatement][0] = Reference(UC4-DeviceUseStatement)

// Pregnancy section

// Disability section






Instance: UC1-Composition-emr-MariaSchmidt
InstanceOf: ChEmrComposition
Usage: #example
Title: "UC1-Composition-emr-MariaSchmidt"
Description: "Composition for the Emergency Record by Maria Schmidt"

* language = #de-CH
* confidentiality.extension.url = "http://fhir.ch/ig/ch-core/StructureDefinition/ch-ext-epr-confidentialitycode"
* confidentiality.extension.valueCodeableConcept = $sct#17621005 "Normal (qualifier value)"
* confidentiality = #N

* identifier.system = "urn:ietf:rfc:3986"
* identifier.value = "urn:uuid:7afc1e97-67f8-49a8-91f5-46af596d0609"

* status = #final
* type = $loinc#60591-5 "Patient summary Document"

* subject = Reference(UC1-Patient-MariaSchmidt)
* date = "2025-09-10T08:00:00+02:00"

* author = Reference(UC1-PractitionerRole)
* title = "Elektronischer Notfallpass - Maria Schmidt"

// Related person section
* section[sectionEmergencyContacts].title = "Notfallkontakte"
* section[sectionEmergencyContacts].text.status = #generated
* section[sectionEmergencyContacts].text.div = "<div xmlns='http://www.w3.org/1999/xhtml'><p>Notfallkontakte:</p><ul><li>Peter Schmidt (Ehemann): +41 44 321 65 87</li><li>Anna Müller (Schwester): +41 44 234 56 78</li></ul></div>"
* section[sectionEmergencyContacts].entry[relatedPerson][0] = Reference(UC1-RelatedPerson-PeterSchmidt)
* section[sectionEmergencyContacts].entry[relatedPerson][+] = Reference(UC1-RelatedPerson-AnnaMueller)

// Care Team section
* section[sectionCareTeam].title = "Behandlungsteam"
* section[sectionCareTeam].code = $loinc#85847-2 "Patient Care team information"
* section[sectionCareTeam].text.status = #generated
* section[sectionCareTeam].text.div = "<div xmlns='http://www.w3.org/1999/xhtml'><p>Behandelnde Ärzte:</p><ul><li>Dr. med. Hans Müller - Hausarzt (GLN: 7601000234567)</li></ul></div>"
* section[sectionCareTeam].entry[practitioner][0] = Reference(UC1-Practitioner-DrMueller)

// Resuscitation section
* section[sectionResuscitation].title = "Reanimation"
* section[sectionResuscitation].code = $loinc#75320-2 "Advance directive"
* section[sectionResuscitation].text.status = #generated
* section[sectionResuscitation].text.div = "<div xmlns='http://www.w3.org/1999/xhtml'><p>Keine Angaben zum Reanimationsstatus verfügbar.</p></div>"
* section[sectionResuscitation].emptyReason = $list-empty-reason#unavailable "Information not available"

// Medication section
* section[sectionMedications].title = "Aktuelle Medikation"
* section[sectionMedications].code = $loinc#10160-0 "History of Medication use Narrative"
* section[sectionMedications].text.status = #generated
* section[sectionMedications].text.div = "<div xmlns='http://www.w3.org/1999/xhtml'><p>Aktuelle Medikation:</p><ul><li>Metformin 1000 mg zweimal täglich zu den Mahlzeiten (seit 15.06.2015)</li></ul></div>"
* section[sectionMedications].entry[medicationStatementOrRequest][0] = Reference(UC1-MedicationStatement-Metformin)

// Immunization section
* section[sectionImmunizations].title = "Impfungen"
* section[sectionImmunizations].code = $loinc#11369-6 "History of Immunization Narrative"
* section[sectionImmunizations].text.status = #generated
* section[sectionImmunizations].text.div = "<div xmlns='http://www.w3.org/1999/xhtml'><p>Keine Impfinformationen verfügbar.</p></div>"
* section[sectionImmunizations].emptyReason = $list-empty-reason#unavailable "Information not available"

// Allergies section
* section[sectionAllergies].title = "Allergien und Unverträglichkeiten"
* section[sectionAllergies].code = $loinc#48765-2 "Allergies and adverse reactions Document"
* section[sectionAllergies].text.status = #generated
* section[sectionAllergies].text.div = "<div xmlns='http://www.w3.org/1999/xhtml'><p>Bekannte Allergien:</p><ul><li><strong>KRITISCH:</strong> Penicillin-Allergie mit anaphylaktischer Reaktion (seit Kindheit)</li></ul><p><strong>Wichtig:</strong> Keine Beta-Lactam-Antibiotika verwenden!</p></div>"
* section[sectionAllergies].entry[allergyOrIntolerance][0] = Reference(UC1-AllergyIntolerance-Penicillin)

// Risk factor section
* section[sectionRiskFactors].title = "Risikofaktoren"
* section[sectionRiskFactors].code = $loinc#46467-7 "Risk factors"
* section[sectionRiskFactors].text.status = #generated
* section[sectionRiskFactors].text.div = "<div xmlns='http://www.w3.org/1999/xhtml'><p>Keine besonderen Risikofaktoren dokumentiert.</p></div>"
* section[sectionRiskFactors].emptyReason = $list-empty-reason#unavailable "Information not available"

// Problem list section
* section[sectionProblems].title = "Probleme und Diagnosen"
* section[sectionProblems].code = $loinc#11450-4 "Problem list - Reported"
* section[sectionProblems].text.status = #generated
* section[sectionProblems].text.div = "<div xmlns='http://www.w3.org/1999/xhtml'><p>Aktive Probleme:</p><ul><li>Diabetes mellitus Typ 2 (seit 15.06.2015) - gut kontrolliert</li></ul></div>"
* section[sectionProblems].entry[problem][0] = Reference(UC1-Condition-Diabetes)

// Advance directive and emergency medical directive section
* section[sectionAdvanceDirectives].title = "Patientenverfügungen"
* section[sectionAdvanceDirectives].code = $loinc#42348-3 "Advance directives"
* section[sectionAdvanceDirectives].text.status = #generated
* section[sectionAdvanceDirectives].text.div = "<div xmlns='http://www.w3.org/1999/xhtml'><p>Keine Patientenverfügung hinterlegt.</p></div>"
* section[sectionAdvanceDirectives].emptyReason = $list-empty-reason#unavailable "Information not available"

// DocumentReferences section
* section[sectionOtherDocuments].title = "Dokumente"
* section[sectionOtherDocuments].code = $loinc#55108-5 "Clinical presentation Document"
* section[sectionOtherDocuments].text.status = #generated
* section[sectionOtherDocuments].text.div = "<div xmlns='http://www.w3.org/1999/xhtml'><p>Keine zusätzlichen Dokumente verfügbar.</p></div>"
* section[sectionOtherDocuments].emptyReason = $list-empty-reason#unavailable "Information not available"

// Medical devices section
* section[sectionMedicalDevices].title = "Medizinische Geräte"
* section[sectionMedicalDevices].code = $loinc#46264-8 "History of medical device use"
* section[sectionMedicalDevices].text.status = #generated
* section[sectionMedicalDevices].text.div = "<div xmlns='http://www.w3.org/1999/xhtml'><p>Keine medizinischen Geräte dokumentiert.</p></div>"
* section[sectionMedicalDevices].emptyReason = $list-empty-reason#unavailable "Information not available"

// Pregnancy section
* section[sectionPregnancyHx].title = "Schwangerschaft"
* section[sectionPregnancyHx].text.status = #generated
* section[sectionPregnancyHx].text.div = "<div xmlns='http://www.w3.org/1999/xhtml'><p>Keine Schwangerschaftsinformationen dokumentiert.</p></div>"
* section[sectionPregnancyHx].emptyReason = $list-empty-reason#unavailable "Information not available"

// Disability section
* section[sectionDisability].title = "Behinderung"
* section[sectionDisability].code = $loinc#101720-1 "Disability status"
* section[sectionDisability].text.status = #generated
* section[sectionDisability].text.div = "<div xmlns='http://www.w3.org/1999/xhtml'><p>Keine Behinderung bekannt.</p></div>"
* section[sectionDisability].emptyReason = $list-empty-reason#nilknown "None Known"

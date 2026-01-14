Instance: EX-Composition
InstanceOf: ChEmrComposition
Usage: #example
Title: "EX-Composition"
Description: "General composition for the Emergency Record"

* language = #de-CH
* confidentiality.extension.url = "http://fhir.ch/ig/ch-core/StructureDefinition/ch-ext-epr-confidentialitycode"
* confidentiality.extension.valueCodeableConcept = $sct#17621005 "Normal (qualifier value)"
* confidentiality = #N

* identifier.system = "urn:ietf:rfc:3986"
* identifier.value = "urn:uuid:7afc1e97-67f8-49a8-91f5-46af596d0609"

* status = #final
* type = $loinc#60591-5 "Patient summary Document"

* subject = Reference(EX-Patient)
* date = "2025-09-10T08:00:00+02:00"

* author = Reference(EX-PractitionerRole)
* title = "Elektronischer Notfallpass - Maria Schmidt"

// Related person section
* section[sectionEmergencyContacts].title = "Notfallkontakte"
* section[sectionEmergencyContacts].code = $loinc#56864-2 "Emergency contact"
* section[sectionEmergencyContacts].text.status = #generated
* section[sectionEmergencyContacts].text.div = "<div xmlns='http://www.w3.org/1999/xhtml'><p>Notfallkontakt: Peter Schmidt (Ehemann) +41 44 321 65 87</p></div>"
* section[sectionEmergencyContacts].entry[relatedPerson][0] = Reference(EX-RelatedPerson)

// Care Team section
* section[sectionCareTeam].title = "Behandelnde Gesundheitsfachperson"
* section[sectionCareTeam].code = $loinc#85847-2 "Patient Care team information"
* section[sectionCareTeam].text.status = #generated
* section[sectionCareTeam].text.div = "<div xmlns='http://www.w3.org/1999/xhtml'><p>Behandelnde Ärzte:</p><ul><li>Dr. med. SarahHuber - Gynecologist (GLN: 7601007922000)</li></ul></div>"
* section[sectionCareTeam].entry[practitioner][0] = Reference(EX-Practitioner)

// Resuscitation section
* section[sectionResuscitation].title = "Reanimation"
* section[sectionResuscitation].code = $loinc#75320-2 "Advance directive"
* section[sectionResuscitation].text.status = #generated
* section[sectionResuscitation].text.div = "<div xmlns='http://www.w3.org/1999/xhtml'><p>Reanimationsstatus:</p><ul><li>Vollumfängliche Reanimation gewünscht</li></ul></div>"
* section[sectionResuscitation].entry[observation][0] = Reference(EX-Resuscitation)

// Medication section
* section[sectionMedications].title = "Medikation"
* section[sectionMedications].code = $loinc#10160-0 "History of Medication use Narrative"
* section[sectionMedications].text.status = #generated
* section[sectionMedications].text.div = "<div xmlns='http://www.w3.org/1999/xhtml'><p>Aktuelle Medikation:</p><ul><li>Metformin 1000mg 1-0-1</li></ul></div>"
* section[sectionMedications].entry[medicationStatementOrRequest][0] = Reference(EX-MedicationStatement)

// Immunization section
* section[sectionImmunizations].title = "Impfungen"
* section[sectionImmunizations].code = $loinc#11369-6 "History of Immunization Narrative"
* section[sectionImmunizations].text.status = #generated
* section[sectionImmunizations].text.div = "<div xmlns='http://www.w3.org/1999/xhtml'><p>Aktuelle Impfungen:</p><ul><li>COVID-19: 12.09.2024</li><li>Influenza: 15.10.2024</li><li>Tetanus: 18.03.2022</li></ul></div>"
* section[sectionImmunizations].entry[immunization][0] = Reference(EX-Immunization)

// Allergies section
* section[sectionAllergies].title = "Allergien und Unverträglichkeiten"
* section[sectionAllergies].code = $loinc#48765-2 "Allergies and adverse reactions Document"
* section[sectionAllergies].text.status = #generated
* section[sectionAllergies].text.div = "<div xmlns='http://www.w3.org/1999/xhtml'><p>Bekannte Allergien:</p><ul><li>Penicillin - Anaphylaxie</li></ul></div>"
* section[sectionAllergies].entry[allergyOrIntolerance][0] = Reference(EX-AllergyIntolerance)

// Risk factor section
* section[sectionRiskFactors].title = "Risikofaktoren für Behandelnde"
* section[sectionRiskFactors].code = $loinc#46467-7 "Risk factors"
* section[sectionRiskFactors].text.status = #generated
* section[sectionRiskFactors].text.div = "<div xmlns='http://www.w3.org/1999/xhtml'><p>Risikofaktoren:</p><ul><li>Diabetes mellitus Typ 2 mit erhöhtem Infektionsrisiko</li><li>Adipositas (BMI 32)</li><li>Chronische Niereninsuffizienz Stadium 3</li></ul></div>"
* section[sectionRiskFactors].entry[riskFactor][0] = Reference(EX-RiskFactor)

// Problem list section
* section[sectionProblems].title = "Problemliste"
* section[sectionProblems].code = $loinc#11450-4 "Problem list - Reported"
* section[sectionProblems].text.status = #generated
* section[sectionProblems].text.div = "<div xmlns='http://www.w3.org/1999/xhtml'><p>Aktive Probleme:</p><ul><li>Diabetes mellitus Typ 2</li></ul></div>"
* section[sectionProblems].entry[problem][0] = Reference(EX-Condition)

// Advance directive and emergency medical directive section
* section[sectionAdvanceDirectives].title = "Patientenverfügung"
* section[sectionAdvanceDirectives].code = $loinc#42348-3 "Advance directives"
* section[sectionAdvanceDirectives].text.status = #generated
* section[sectionAdvanceDirectives].text.div = "<div xmlns='http://www.w3.org/1999/xhtml'><p>Patientenverfügung:</p><ul><li>Patientenverfügung liegt vor (erstellt am 15.03.2023)</li><li>Keine Reanimation gewünscht</li><li>Bevollmächtigte Person: Elisabeth Meier</li></ul></div>"
* section[sectionAdvanceDirectives].entry[advanceDirective][0] = Reference(EX-AdvanceDirective)

// Document references section
* section[sectionOtherDocuments].title = "Weitere Dokumente"
* section[sectionOtherDocuments].code = $loinc#55108-5 "Clinical presentation Document"
* section[sectionOtherDocuments].text.status = #generated
* section[sectionOtherDocuments].text.div = "<div xmlns='http://www.w3.org/1999/xhtml'><p>Weitere wichtige Dokumente:</p><ul><li>Patientenverfügung vom 15.03.2024</li></ul></div>"
* section[sectionOtherDocuments].entry[document][0] = Reference(EX-DocumentReferences)

// Medical devices section
* section[sectionMedicalDevices].title = "Medizinprodukte"
* section[sectionMedicalDevices].code = $loinc#46264-8 "History of medical device use"
* section[sectionMedicalDevices].text.status = #generated
* section[sectionMedicalDevices].text.div = "<div xmlns='http://www.w3.org/1999/xhtml'><p>Medizinprodukte:</p><ul><li>Herzschrittmacher seit 2020</li></ul></div>"
* section[sectionMedicalDevices].entry[deviceStatement][0] = Reference(EX-DeviceUseStatement)

// Pregnancy section
* section[sectionPregnancyHx].title = "Schwangerschaftsstatus"
* section[sectionPregnancyHx].code = $loinc#10162-6 "Pregnancies Hx"
* section[sectionPregnancyHx].text.status = #generated
* section[sectionPregnancyHx].text.div = "<div xmlns='http://www.w3.org/1999/xhtml'><p>Schwangerschaftsstatus:</p><ul><li>Nicht schwanger</li></ul></div>"
* section[sectionPregnancyHx].entry[pregnancyStatus][0] = Reference(EX-Pregnancy)

// Disability section
* section[sectionDisability].title = "Behinderung"
* section[sectionDisability].code = $loinc#101720-1 "Disability status"
* section[sectionDisability].text.status = #generated
* section[sectionDisability].text.div = "<div xmlns='http://www.w3.org/1999/xhtml'><p>Behinderungsstatus:</p><ul><li>Keine bekannte Behinderung</li></ul></div>"
* section[sectionDisability].entry[observation][0] = Reference(EX-Disability)

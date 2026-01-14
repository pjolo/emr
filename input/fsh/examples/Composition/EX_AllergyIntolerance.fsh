Instance: EX-AllergyIntolerance
InstanceOf: ChEmrAllergyIntolerance
Usage: #example
Title: "EX-AllergyIntolerance (Allergy to contrast media)"
Description: "General example of an allergy"

* clinicalStatus = http://terminology.hl7.org/CodeSystem/allergyintolerance-clinical#active
* verificationStatus = http://terminology.hl7.org/CodeSystem/allergyintolerance-verification#confirmed
* type = #allergy
* category = #medication
* criticality = #high
* code = $sct#293637006 "Allergy to contrast media (finding)"
* patient = Reference(EX-Patient)
* onsetDateTime = "2018-05-20"
* recordedDate = "2025-01-15"
* recorder = Reference(EX-Practitioner)
* asserter = Reference(EX-Patient)

* note.text = "Allergie gegen jodhaltige Kontrastmittel seit 2018. Aufgetreten bei CT-Untersuchung nach Unfall. WICHTIG: Keine jodhaltigen Kontrastmittel verwenden!"

* reaction.substance = $sct#293637006 "Allergy to contrast media (finding)"
* reaction.manifestation[0] = $sct#271807003 "Eruption of skin"
* reaction.manifestation[1] = $sct#418363000 "Itching of skin" 
* reaction.manifestation[2] = $sct#23924001 "Tight chest"
* reaction.severity = #moderate
* reaction.note.text = "Hautausschlag mit Juckreiz und leichte Atembeschwerden. Behandlung mit Antihistaminika und Kortison erfolgreich."

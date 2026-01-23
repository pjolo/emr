Instance: UC1-AllergyIntolerance-Penicillin
InstanceOf: ChEmrAllergyIntolerance
Usage: #example
Title: "UC1-AllergyIntolerance-Penicillin"
Description: "Example of penicillin allergy for Maria Schmidt"

* clinicalStatus = http://terminology.hl7.org/CodeSystem/allergyintolerance-clinical#active
* verificationStatus = http://terminology.hl7.org/CodeSystem/allergyintolerance-verification#confirmed
* type = #allergy
* category = #medication
* criticality = #high
* code = $sct#764146007 "Penicillin"
* patient = Reference(UC1-Patient-MariaSchmidt)
* onsetDateTime = "1985-08-20"
* recordedDate = "2015-06-15"
* recorder = Reference(UC1-Practitioner-DrMueller)
* asserter = Reference(UC1-Patient-MariaSchmidt)
* note.text = "Anaphylaktische Reaktion in der Kindheit nach Penicillin-Gabe. Wichtig: Keine Beta-Lactam-Antibiotika verwenden!"

* reaction.substance = $sct#764146007 "Penicillin"
* reaction.manifestation[0] = $sct#39579001 "Anaphylaxis"
* reaction.manifestation[1] = $sct#271807003 "Eruption of skin"
* reaction.manifestation[2] = $sct#267036007 "Dyspnea"
* reaction.severity = #severe
* reaction.note.text = "Notfallbehandlung mit Adrenalin erforderlich gewesen. Eltern berichteten über Bewusstlosigkeit und Kreislaufschock."

Instance: UC4-Condition-AtrialFibrillation
InstanceOf: ChEmrCondition
Usage: #example
Title: "UC4-Condition-AtrialFibrillation"
Description: "Permanentes Vorhofflimmern"

* clinicalStatus = http://terminology.hl7.org/CodeSystem/condition-clinical#active
* verificationStatus = http://terminology.hl7.org/CodeSystem/condition-ver-status#confirmed
* category = http://terminology.hl7.org/CodeSystem/condition-category#problem-list-item
* severity = $sct#24484000 "Severe"
* code = $icd10#I48.2 "Chronic atrial fibrillation"
* subject = Reference(UC4-Patient-RudolfZimmermann)
* onsetDateTime = "2019-03-20"
* recordedDate = "2019-03-20"
* recorder = Reference(UC4-Practitioner-DrWeber)
* asserter = Reference(UC4-Practitioner-DrWeber)
* note.text = "Permanentes Vorhofflimmern seit 2019. Antikoagulation mit Apixaban. CHA2DS2-VASc Score: 6 (hohes Schlaganfallrisiko)."


Instance: UC4-Condition-DiabetesRudolf
InstanceOf: ChEmrCondition
Usage: #example
Title: "UC4-Condition-DiabetesRudolf"
Description: "Diabetes mellitus Typ 2 mit nephropathischen Komplikationen"

* clinicalStatus = http://terminology.hl7.org/CodeSystem/condition-clinical#active
* verificationStatus = http://terminology.hl7.org/CodeSystem/condition-ver-status#confirmed
* category = http://terminology.hl7.org/CodeSystem/condition-category#problem-list-item
* severity = $sct#24484000 "Severe"
* code = $icd10#E11.2 "Type 2 diabetes mellitus : With renal complications"
* subject = Reference(UC4-Patient-RudolfZimmermann)
* onsetDateTime = "2010-04-15"
* recordedDate = "2010-04-15"
* recorder = Reference(UC4-Practitioner-DrWeber)
* asserter = Reference(UC4-Practitioner-DrWeber)
* note.text = "Diabetes mellitus Typ 2 seit 2010. Komplikationen: diabetische Nephropathie. HbA1c zuletzt 7.8%. Bei Niereninsuffizienz Metformin kontraindiziert."

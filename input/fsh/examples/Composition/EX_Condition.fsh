Instance: EX-Condition
InstanceOf: ChEmrCondition
Usage: #example
Title: "EX-Condition (Type 2 diabetes mellitus)"
Description: "General example of a condition"

* clinicalStatus = $condition-clinical#active
* verificationStatus = $condition-ver-status#confirmed

* category = $condition-category#problem-list-item "Problem List Item"

* severity = $sct#24484000 "Severe (severity modifier) (qualifier value)"

* code = $icd10#E11.2 "Type 2 diabetes mellitus with renal complications"

* subject = Reference(EX-Patient)

* onsetDateTime = "2010-04-15"
* recordedDate = "2010-04-15"

* recorder = Reference(EX-Practitioner)
* asserter = Reference(EX-Practitioner)

* note.text = "Diabetes mellitus Typ 2 seit 2010. Komplikationen: diabetische Nephropathie. HbA1c zuletzt 7.8%. Bei Niereninsuffizienz Metformin kontraindiziert."

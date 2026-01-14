Instance: UC4-Condition-HeartFailure
InstanceOf: ChEmrCondition
Usage: #example
Title: "UC4-Condition-HeartFailure"
Description: "Chronische Herzinsuffizienz NYHA III"

* clinicalStatus = http://terminology.hl7.org/CodeSystem/condition-clinical#active
* verificationStatus = http://terminology.hl7.org/CodeSystem/condition-ver-status#confirmed
* category = http://terminology.hl7.org/CodeSystem/condition-category#problem-list-item
* severity = $sct#24484000 "Severe"
* code = $icd10#I50.9 "Heart failure, unspecified"
* subject = Reference(UC4-Patient-RudolfZimmermann)
* onsetDateTime = "2018-06-15"
* recordedDate = "2018-06-15"
* recorder = Reference(UC4-Practitioner-DrWeber)
* asserter = Reference(UC4-Practitioner-DrWeber)
* note.text = "Chronische Herzinsuffizienz NYHA Stadium III. Ätiologie: ischämische Kardiomyopathie. EF 35%. Unter optimaler medikamentöser Therapie."

Instance: UC4-MedicationStatement-Ramipril
InstanceOf: ChEmrMedicationStatement
Usage: #example
Title: "UC4-MedicationStatement-Ramipril"
Description: "ACE-Hemmer Therapie"

* status = #active
* medicationCodeableConcept = $atc#C09AA05 "Ramipril"
* subject = Reference(UC4-Patient-RudolfZimmermann)
* dateAsserted = "2025-09-01"
* effectiveDateTime = "2025-09-01"
* informationSource = Reference(UC4-Practitioner-DrWeber)

* dosage.text = "5mg einmal täglich morgens"
* dosage.timing.repeat.frequency = 1
* dosage.timing.repeat.period = 1
* dosage.timing.repeat.periodUnit = #d
* dosage.timing.repeat.when = #MORN
* dosage.route = $sct#26643006 "Oral route"
* dosage.doseAndRate.doseQuantity.value = 5
* dosage.doseAndRate.doseQuantity.unit = "mg"
* dosage.doseAndRate.doseQuantity.system = $ucum
* dosage.doseAndRate.doseQuantity.code = #mg


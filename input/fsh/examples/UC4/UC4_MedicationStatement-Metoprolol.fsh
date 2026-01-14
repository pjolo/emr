Instance: UC4-MedicationStatement-Metoprolol
InstanceOf: ChEmrMedicationStatement
Usage: #example
Title: "UC4-MedicationStatement-Metoprolol"
Description: "Beta-Blocker Therapie"

* status = #active
* medicationCodeableConcept = $atc#C07AB02 "Metoprolol"
* subject = Reference(UC4-Patient-RudolfZimmermann)
* dateAsserted = "2025-09-01"
* effectiveDateTime = "2025-09-01"
* informationSource = Reference(UC4-Practitioner-DrWeber)

* dosage.text = "50mg zweimal täglich (morgens und abends)"
* dosage.timing.repeat.frequency = 2
* dosage.timing.repeat.period = 1
* dosage.timing.repeat.periodUnit = #d
* dosage.timing.repeat.when[0] = #MORN
* dosage.timing.repeat.when[1] = #EVE
* dosage.route = $sct#26643006 "Oral route"
* dosage.doseAndRate.doseQuantity.value = 50
* dosage.doseAndRate.doseQuantity.unit = "mg"
* dosage.doseAndRate.doseQuantity.system = $ucum
* dosage.doseAndRate.doseQuantity.code = #mg


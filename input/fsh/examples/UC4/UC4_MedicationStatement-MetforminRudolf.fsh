Instance: UC4-MedicationStatement-MetforminRudolf
InstanceOf: ChEmrMedicationStatement
Usage: #example
Title: "UC4-MedicationStatement-MetforminRudolf"
Description: "Metformin Therapie bei Diabetes - KONTRAINDIZIERT bei Niereninsuffizienz"

* status = #stopped
* statusReason = $sct#182840001 "Drug treatment stopped - medical advice"
* medicationCodeableConcept = $atc#A10BA02 "Metformin"
* subject = Reference(UC4-Patient-RudolfZimmermann)
* dateAsserted = "2025-09-10"
* effectiveDateTime = "2025-09-10"
* informationSource = Reference(UC4-Practitioner-DrWeber)

* dosage.text = "1000mg zweimal täglich zu den Mahlzeiten - GESTOPPT wegen Niereninsuffizienz"
* dosage.timing.repeat.frequency = 2
* dosage.timing.repeat.period = 1
* dosage.timing.repeat.periodUnit = #d
* dosage.timing.repeat.when[0] = #CM
* dosage.timing.repeat.when[1] = #CV
* dosage.route = $sct#26643006 "Oral route"
* dosage.doseAndRate.doseQuantity.value = 1000
* dosage.doseAndRate.doseQuantity.unit = "mg"
* dosage.doseAndRate.doseQuantity.system = $ucum
* dosage.doseAndRate.doseQuantity.code = #mg

* note.text = "SOFORT GESTOPPT: Metformin bei eGFR <30 ml/min/1.73m² kontraindiziert. Laktatazidose-Risiko! Umstellung auf Insulin oder andere Antidiabetika erforderlich."

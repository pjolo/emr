Instance: EX-Disability
InstanceOf: ChEmrObservation
Usage: #example
Title: "EX-Disability"
Description: "General example of a disability"

* status = #final
* code = $sct#228158008 "Walking disability (finding)"
* subject = Reference(EX-Patient)
* effectiveDateTime = "2025-10-08"
* note.text = "Gehbehinderung, Rollstuhlnutzung"
* performer = Reference(EX-Practitioner)
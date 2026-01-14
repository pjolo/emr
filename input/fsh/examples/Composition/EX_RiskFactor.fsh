Instance: EX-RiskFactor
InstanceOf: ChEmrObservation
Usage: #example
Title: "EX-RiskFactor"
Description: "General example of a reik factors"

* status = #final
* code = $sct#77176002 "Smoker"
* subject = Reference(EX-Patient)
* effectiveDateTime = "2025-10-08"
* valueBoolean = true
* performer = Reference(EX-Practitioner)
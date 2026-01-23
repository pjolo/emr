Instance: EX-RiskFactor
InstanceOf: ChEmrObservationRiskFactors
Usage: #example
Title: "EX-RiskFactor"
Description: "General example of a reik factors"

* status = #final
* code = $sct#66071002 "Viral hepatitis type B"
* subject = Reference(EX-Patient)
* effectiveDateTime = "2025-10-08"
* valueBoolean = true
* performer = Reference(EX-Practitioner)
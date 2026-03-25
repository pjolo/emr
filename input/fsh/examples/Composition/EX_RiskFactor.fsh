Instance: EX-RiskFactor
InstanceOf: ChEmrConditionHealthcareProfessionalsRiskFactors
Usage: #example
Title: "EX-RiskFactor"
Description: "General example of a risk factors"

* clinicalStatus = #active
* code = $sct#66071002 "Viral hepatitis type B"
* subject = Reference(EX-Patient)
* recorder = Reference(EX-Practitioner)
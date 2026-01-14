Instance: EX-AdvanceDirective
InstanceOf: ChEmrDocumentReference
Usage: #example
Title: "EX-AdvanceDirective"
Description: "Advance directive for general example"

* status = #current
* type = $loinc#42348-3 "Advance directives"
* subject = Reference(EX-Patient)
* date = "2024-01-15T14:30:00+01:00"
* description = "Patientenverfügung im Schlafzimmer"

* content.attachment.contentType = #application/pdf

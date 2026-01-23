Instance: EX-AdvanceDirective
InstanceOf: ChEmrDocumentReference
Usage: #example
Title: "EX-AdvanceDirective"
Description: "General example of a advance directive"

* status = #current
* type = $sct#371538006 "Advance directive report (record artifact)"
* subject = Reference(EX-Patient)
* date = "2024-01-15T14:30:00+01:00"
* description = "Patientenverfügung im Schlafzimmer"

* content.attachment.contentType = #application/pdf

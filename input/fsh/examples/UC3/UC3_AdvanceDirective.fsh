Instance: UC3-AdvanceDirective
InstanceOf: ChEmrDocumentReferenceAdvanceDirective
Usage: #example
Title: "UC3-AdvanceDirective"
Description: "Advance directive document for Laura Weber"

* status = #current

* subject = Reference(Patient/UC3-Patient-LauraWeber)
* date = "2025-07-15T14:30:00+02:00"
* author = Reference(Patient/UC3-Patient-LauraWeber)
* type = $sct#371538006 "Advance directive report"
* description = "Patientenverfügung zuhause"

* content.attachment.contentType = #application/pdf


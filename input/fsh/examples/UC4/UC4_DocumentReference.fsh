Instance: UC4-AdvanceDirective
InstanceOf: ChEmrDocumentReference
Usage: #example
Title: "UC4-AdvanceDirective"
Description: "Patientenverfügung von Rudolf Zimmermann"

* status = #current

* subject = Reference(Patient/UC4-Patient-RudolfZimmermann)
* date = "2025-07-15T14:30:00+02:00"
* author = Reference(Patient/UC4-Patient-RudolfZimmermann)
* type = $sct#1264561001 "Living will"
* description = "Patientenverfügung von Rudolf Zimmermann"

* content.attachment.contentType = #application/pdf


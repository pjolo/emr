Instance: UC4-DocumentReference
InstanceOf: ChEmrDocumentReference
Usage: #example
Title: "UC4-DocumentReference"
Description: "Patientenverfügung von Rudolf Zimmermann"

* status = #current

* subject = Reference(Patient/UC4-Patient-RudolfZimmermann)
* date = "2025-07-15T14:30:00+02:00"
* author = Reference(Patient/UC4-Patient-RudolfZimmermann)

* description = "Patientenverfügung von Rudolf Zimmermann"

* content.attachment.contentType = #application/pdf


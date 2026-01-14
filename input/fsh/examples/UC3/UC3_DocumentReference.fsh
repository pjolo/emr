Instance: UC3-DocumentReference
InstanceOf: ChEmrDocumentReference
Usage: #example
Title: "U3-DocumentReference"
Description: "Advance directive document for Laura Weber"

* status = #current

* subject = Reference(Patient/UC3-Patient-LauraWeber)
* date = "2025-07-15T14:30:00+02:00"
* author = Reference(Patient/UC3-Patient-LauraWeber)

* description = "Patientenverfügung bezüglich Reanimationsmaßnahmen während der Schwangerschaft"

* content.attachment.contentType = #application/pdf


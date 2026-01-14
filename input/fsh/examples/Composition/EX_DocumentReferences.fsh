Instance: EX-DocumentReferences
InstanceOf: ChEmrDocumentReference
Usage: #example
Title: "EX-DocumentReferences (organ donation)"
Description: "General example of a Document References"

* status = #current

* subject = Reference(Patient/EX-Patient)
* date = "2025-07-15T14:30:00+02:00"
* author = Reference(Patient/EX-Patient)

* description = "Organspendeausweis ist im Protmonnaie"

* content.attachment.contentType = #application/pdf

Instance: UC1-Organization-Hausarztpraxis
InstanceOf: ChEmrOrganization
Usage: #example
Title: "UC1-Organization-Hausarztpraxis"
Description: "Dr. Müller's family practice"

* identifier[GLN].system = "urn:oid:2.51.1.3"
* identifier[GLN].value = "7601009110849"

* active = true

* name = "Hausarztpraxis Zürich"

* telecom[0].system = #phone
* telecom[=].value = "+41 44 555 12 34"
* telecom[=].use = #work

* telecom[+].system = #email
* telecom[=].value = "info@praxis-zuerich.ch"
* telecom[=].use = #work

* telecom[+].system = #url
* telecom[=].value = "https://www.praxis-zuerich.ch"
* telecom[=].use = #work

* address.line[0] = "Hausarztpraxis Zürich"
* address.line[+] = "Bahnhofstrasse 15"
* address.city = "Zürich"
* address.postalCode = "8001"
* address.country = "CH"

* type = $sct#394802001 "General medicine"
* type.text = "Allgemeine Innere Medizin"


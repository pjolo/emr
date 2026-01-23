Instance: UC4-Practitioner-DrWeber
InstanceOf: ChEmrPractitioner
Usage: #example
Title: "UC4-Practitioner-DrWeber"
Description: "Hausarzt von Rudolf Zimmermann"

* language = #de-CH
* identifier[GLN].system = "urn:oid:2.51.1.3"
* identifier[GLN].value = "7601007922000"

* name.family = "Weber"
* name.given = "Klaus"
* name.prefix = "Dr. med."

* telecom[0].system = #phone
* telecom[0].value = "+41 61 271 88 88"
* telecom[0].use = #work

* telecom[1].system = #email
* telecom[1].value = "k.weber@hausarzt-basel.ch"
* telecom[1].use = #work

* address.line = "Hausarztpraxis Dr. Weber"
* address.line[1] = "Steinenvorstadt 71"
* address.city = "Basel"
* address.postalCode = "4051"
* address.country = "CH"

* qualification[0].code = $sct#408443003 "General medical practice"
* qualification[0].period.start = "1998-01-01"
* qualification[0].issuer.display = "Medizinische Fakultät Universität Basel"

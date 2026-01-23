Instance: EX-RelatedPerson
InstanceOf: ChEmrRelatedPerson
Usage: #example
Title: "EX-RelatedPerson"
Description: "General example of a related person"

* active = true
* patient = Reference(EX-Patient)
* relationship = $v3-RoleCode#HUSB "husband"

* name.use = #official
* name.family = "Schmidt"
* name.given = "Peter"

* telecom[0].system = #phone
* telecom[0].value = "+41 44 321 65 87"
* telecom[0].use = #home
* telecom[0].rank = 1

* telecom[1].system = #phone
* telecom[1].value = "+41 79 876 54 32"
* telecom[1].use = #mobile
* telecom[1].rank = 2

* telecom[2].system = #email
* telecom[2].value = "peter.schmidt@example.ch"
* telecom[2].use = #home

* gender = #male
* birthDate = "1975-09-22"

* address.use = #home
* address.line = "Musterstrasse 123"
* address.city = "Zürich"
* address.postalCode = "8001"
* address.country = "CH"

* communication.language = urn:ietf:bcp:47#de
* communication.preferred = true

Instance: UC1-RelatedPerson-AnnaMueller
InstanceOf: ChEmrRelatedPerson
Usage: #example
Title: "UC1-RelatedPerson-AnnaMueller"
Description: "Sister of Maria Schmidt as another family member"

* active = true
* patient = Reference(UC1-Patient-MariaSchmidt)
* relationship = $v3-RoleCode#SIB "Sibling"

* name.use = #official
* name.family = "Müller"
* name.given = "Anna"

* telecom[0].system = #phone
* telecom[0].value = "+41 31 456 78 90"
* telecom[0].use = #home
* telecom[0].rank = 1

* telecom[1].system = #phone
* telecom[1].value = "+41 79 234 56 78"
* telecom[1].use = #mobile
* telecom[1].rank = 2

* gender = #female
* birthDate = "1980-07-14"

* address.use = #home
* address.line = "Kornhausplatz 8"
* address.city = "Bern"
* address.postalCode = "3011"
* address.country = "CH"

* communication.language = urn:ietf:bcp:47#de
* communication.preferred = true

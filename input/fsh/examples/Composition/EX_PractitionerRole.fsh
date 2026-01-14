Instance: EX-PractitionerRole
InstanceOf: $CHIPSPractitionerRole
Usage: #example
Title: "EX-PractitionerRole"
Description: "Dr. Sarah Huber working as gynecologist at Gynäkologie Praxis Basel"

* active = true

// Verbindung zur Person
* practitioner = Reference(Practitioner/EX-Practitioner)
* practitioner.display = "Dr. med. Sarah Huber"

// Verbindung zur Organisation
* organization = Reference(Organization/EX-Organization-GynPraxis)
* organization.display = "Gynäkologie Praxis Basel"

// Rolle
* code = $sct#309343006 "Physician"
* code.text = "Ärztin"

// Fachrichtung
* specialty = $sct#394586005 "Gynecology"
* specialty.text = "Gynäkologie und Geburtshilfe"

// Kontaktdaten (der Praxis)
* telecom[0].system = #phone
* telecom[=].value = "+41 61 265 25 25"
* telecom[=].use = #work

* telecom[+].system = #email
* telecom[=].value = "s.huber@gynpraxis-basel.ch"
* telecom[=].use = #work

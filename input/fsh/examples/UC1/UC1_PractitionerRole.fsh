Instance: UC1-PractitionerRole
InstanceOf: $CHIPSPractitionerRole
Usage: #example
Title: "UC1-PractitionerRole"
Description: "Dr. Hans Müller working as family doctor at Hausarztpraxis Zürich"

* active = true

// Verbindung zur Person
* practitioner = Reference(Practitioner/UC1-Practitioner-DrMueller)
* practitioner.display = "Dr. med. Hans Müller"

// Verbindung zur Organisation
* organization = Reference(Organization/UC1-Organization-Hausarztpraxis)
* organization.display = "Hausarztpraxis Zürich"

// Rolle
* code = $sct#309343006 "Physician"
* code.text = "Arzt"

// Fachrichtung
* specialty = $sct#419772000 "Family practice"
* specialty.text = "Allgemeine Innere Medizin"

// Kontaktdaten (der Praxis)
* telecom[0].system = #phone
* telecom[=].value = "+41 44 555 12 34"
* telecom[=].use = #work

* telecom[+].system = #email
* telecom[=].value = "h.mueller@praxis-zuerich.ch"
* telecom[=].use = #work


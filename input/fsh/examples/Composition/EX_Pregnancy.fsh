Instance: EX-Pregnancy
InstanceOf: $ObservationPregnancyStatusUvIps
Usage: #example
Title: "EX-Pregnancy"
Description: "General example of a Pregnancy"

* status = #final
* category = http://terminology.hl7.org/CodeSystem/observation-category#social-history
* code = $loinc#82810-3 "Pregnancy status"
* subject = Reference(EX-Patient)
* effectiveDateTime = "2025-09-10T10:00:00+02:00"
* performer = Reference(EX-Practitioner)

* valueCodeableConcept = $sct#77386006 "Patient currently pregnant"

* note.text = "Normale Schwangerschaftsentwicklung, alle Vorsorgeuntersuchungen unauffällig. Letzte Kontrolle am 05.09.2025 - Kind zeitgerecht entwickelt."

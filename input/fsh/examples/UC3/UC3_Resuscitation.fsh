Instance: UC3-Resuscitation
InstanceOf: ChEmrObservation
Usage: #example
Title: "Advance directive on resuscitation"
Description: "Advance directive for Laura Weber"

* status = #final
* code = $loinc#75792-2 "Advance directive - request for resuscitation that differs from cardiopulmonary resuscitation"
* subject = Reference(UC3-Patient-LauraWeber)
* effectiveDateTime = "2025-10-08"
* valueBoolean = true
* performer = Reference(UC3-PractitionerRole-Hausarzt)


Instance: UC3-Resuscitation
InstanceOf: ChEmrObservationResuscitationStatus
Usage: #example
Title: "Advance directive on resuscitation"
Description: "Advance directive for Laura Weber"

* status = #final
* code = $sct#304251008 "Resuscitation status"
* subject = Reference(UC3-Patient-LauraWeber)
* effectiveDateTime = "2025-10-08"
* valueBoolean = true
* performer = Reference(UC3-PractitionerRole-Hausarzt)


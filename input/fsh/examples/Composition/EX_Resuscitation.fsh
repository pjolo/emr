Instance: EX-Resuscitation
InstanceOf: ChEmrObservationResuscitationStatus
Usage: #example
Title: "EX-Resuscitation"
Description: "General example of a resuscitation"

* status = #final
* code = $sct#304251008 "Resuscitation status"
* subject = Reference(EX-Patient)
* effectiveDateTime = "2025-10-08"
* valueBoolean = true
* performer = Reference(EX-Practitioner)
Profile: ChEmrObservationResuscitationStatus
Parent: Observation
Id: ch-emr-observation-resuscitation-status
Title: "CH Emergency Record Observation Resuscitation Status"
Description: "Observation profile for documenting the patient's resuscitation status (e.g., DNR, full code)"

* code = $sct#304251008 "Resuscitation status"
* value[x] only boolean
* valueBoolean 1..1 MS
* valueBoolean ^short = "Status of resuscitation"
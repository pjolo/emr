Profile: ChEmrObservationPregnancyStatus
Parent: $ObservationPregnancyStatusUvIps
Id: ch-emr-observation-pregnancy-status
Title: "CH Emergency Record Observation Pregnancy Status"
Description: "Profile for documenting pregnancy status in the emergency record"

* ^status = #active
* subject only Reference(ChEmrPatient)
* subject MS
* valueCodeableConcept MS
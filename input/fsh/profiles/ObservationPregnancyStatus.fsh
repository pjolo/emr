Profile: ChEmrObservationPregnancyStatus
Parent: Observation
Id: ch-emr-observation
Title: "CH Emergency Record Observation"
Description: "Observation profile for various observations in the Emergency Record."

* status MS
* subject MS
* subject only Reference(ChEmrPatient)

* value[x] only boolean
* value[x] 1..1 MS
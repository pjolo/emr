Profile: ChEmrObservationPhysicalDisability
Parent: Observation
Id: ch-emr-observation-physical-disability
Title: "CH EMR Physical Disability Observation"
Description: "Beobachtung einer physischen Beeinträchtigung."
* status MS
* subject 1..1 MS
* subject only Reference(ChEmrPatient)
* code 1..1 MS
* code from ChEmrPhysicalDisabilityTypesVS (extensible)
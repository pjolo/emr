Profile: ChEmrObservationPhysicalDisability
Parent: Observation
Id: ch-emr-observation-physical-disability
Title: "CH EMR Physical Disability Observation"
Description: "Beobachtung einer physischen Beeinträchtigung."
* status MS
* code = $loinc#101720-1 "Disability status"
* subject 1..1 MS
* subject only Reference(ChEmrPatient)
* valueCodeableConcept 1..1 MS
* valueCodeableConcept from ChEmrPhysicalDisabilityTypesVS (extensible)
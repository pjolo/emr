Profile: ChEmrObservationCognitiveDisability
Parent: Observation
Id: ch-emr-observation-cognitive-disability
Title: "CH Emergency Record Observation Disability"
Description: "Observation profile for various observations in the Emergency Record."

* status MS
* code = $loinc#95618-5 "Disability type"
* subject 1..1 MS
* subject only Reference(ChEmrPatient)
* valueCodeableConcept 1..1 MS
* valueCodeableConcept from ChEmrCognativeDisabilityTypesVS (extensible)
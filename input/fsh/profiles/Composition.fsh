Profile: ChEmrComposition
Parent: $ChIpsCompositionEPR
Id: ch-emr-composition
Title: "CH Emergency Record Composition"
Description: "Swiss Emergency Record based on International Patient Summary"

* section contains
    sectionEmergencyContacts 1..1 and
    sectionCareTeam 0..1 and          
    sectionResuscitation 0..1 and
    sectionRiskFactors 0..1 and
    sectionOtherDocuments 0..1 and          
    sectionDisability 0..1 

// Medication
* section[sectionMedications] 1..1

// Device
* section[sectionMedicalDevices] 0..1

//Related person
* section[sectionEmergencyContacts].code = $loinc#56864-2 "Emergency contact"
* section[sectionEmergencyContacts].entry ^slicing.discriminator.type = #profile
* section[sectionEmergencyContacts].entry ^slicing.discriminator.path = "resolve()"
* section[sectionEmergencyContacts].entry ^slicing.rules = #open
* section[sectionEmergencyContacts].entry contains relatedPerson 0..*
* section[sectionEmergencyContacts].entry[relatedPerson] only Reference(ChEmrRelatedPerson)

// Care Team
* section[sectionCareTeam].code = $loinc#85847-2 "Patient Care team information"
* section[sectionCareTeam].entry ^slicing.discriminator.type = #profile
* section[sectionCareTeam].entry ^slicing.discriminator.path = "resolve()"
* section[sectionCareTeam].entry ^slicing.rules = #open
* section[sectionCareTeam].entry contains practitioner 0..* 
* section[sectionCareTeam].entry[practitioner] only Reference(ChEmrPractitioner)

//Resuscitation
* section[sectionResuscitation].code = $loinc#75320-2 "Advance directive"
* section[sectionResuscitation].entry ^slicing.discriminator.type = #profile
* section[sectionResuscitation].entry ^slicing.discriminator.path = "resolve()"
* section[sectionResuscitation].entry ^slicing.rules = #open
* section[sectionResuscitation].entry contains observation 0..*
* section[sectionResuscitation].entry[observation] only Reference(ChEmrObservation)

// Risk Factors
* section[sectionRiskFactors].code = $loinc#46467-7 "Risk factors"
* section[sectionRiskFactors].entry ^slicing.discriminator.type = #profile
* section[sectionRiskFactors].entry ^slicing.discriminator.path = "resolve()"
* section[sectionRiskFactors].entry ^slicing.rules = #open
* section[sectionRiskFactors].entry contains riskFactor 0..*
* section[sectionRiskFactors].entry[riskFactor] only Reference(ChEmrObservation)

// Advance directive
* section[sectionAdvanceDirectives].code = $loinc#42348-3 "Advance directives"
* section[sectionAdvanceDirectives].entry ^slicing.discriminator.type = #profile
* section[sectionAdvanceDirectives].entry ^slicing.discriminator.path = "resolve()"
* section[sectionAdvanceDirectives].entry ^slicing.rules = #open
* section[sectionAdvanceDirectives].entry contains advanceDirective 0..*
* section[sectionAdvanceDirectives].entry[advanceDirective] only Reference(ChEmrDocumentReference)

//OtherDocuments
* section[sectionOtherDocuments].code = $loinc#55108-5 "Clinical presentation Document"
* section[sectionOtherDocuments].entry ^slicing.discriminator.type = #profile
* section[sectionOtherDocuments].entry ^slicing.discriminator.path = "resolve()"
* section[sectionOtherDocuments].entry ^slicing.rules = #open
* section[sectionOtherDocuments].entry contains document 0..*
* section[sectionOtherDocuments].entry[document] only Reference(ChEmrDocumentReference)

//Disability
* section[sectionDisability].code = $loinc#101720-1 "Disability status"
* section[sectionDisability].entry ^slicing.discriminator.type = #profile
* section[sectionDisability].entry ^slicing.discriminator.path = "resolve()"
* section[sectionDisability].entry ^slicing.rules = #open
* section[sectionDisability].entry contains observation 0..*
* section[sectionDisability].entry[observation] only Reference(ChEmrObservation)



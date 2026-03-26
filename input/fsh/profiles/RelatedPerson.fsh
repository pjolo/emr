Profile: ChEmrRelatedPerson
Parent: $ChCoreRelatedPerson
Id: ch-emr-relatedperson
Title: "CH Emergency Record RelatedPerson"
Description: "RelatedPerson profile for emergency contacts and family members in the Emergency Record."

* name 1..* MS 
* relationship MS 
* telecom[phone] MS
* telecom[email] MS
* telecom[internet] MS
* address MS 
* communication.language MS 

* relationship from http://terminology.hl7.org/ValueSet/v3-PersonalRelationshipRoleType (extensible)
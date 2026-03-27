Instance: UC2-DeviceUseStatement
InstanceOf: http://hl7.org/fhir/uv/ips/StructureDefinition/DeviceUseStatement-uv-ips
Usage: #example
Title: "UC2-DeviceUseStatement"
Description: "Hans Meier trägt einen Herzschrittmacher"

* status = #active
* subject = Reference(UC2-Patient-HansMeier)
* device = Reference(UC2-Device-Pacemaker)  
* timingDateTime = "2023-05-15"
* recordedOn = "2023-05-15"

Instance: EX-MedicalDevice
InstanceOf: ChEmrDevice
Usage: #example
Title: "EX-MedicalDevice"
Description: "General example of a medical device"

* status = #active
* type = $sct#14106009 "Cardiac pacemaker"

* patient = Reference(EX-Patient)



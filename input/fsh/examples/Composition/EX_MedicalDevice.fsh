Instance: EX-MedicalDevice
InstanceOf: ChEmrDevice
Usage: #example
Title: "EX-MedicalDevice"
Description: "General example of a medical device (Cardiac pacemaker)"

* identifier[0].type = $v2-0203#SNO
* identifier[0].value = "PM987654321"

* identifier[1].type = $v2-0203#EN
* identifier[1].value = "L331"

* status = #active
* type = $sct#14106009 "Cardiac pacemaker"
* manufacturer = "Boston Scientific"

* deviceName.name = "Accolade MRI Pacemaker"
* deviceName.type = #manufacturer-name

* modelNumber = "L331"
* serialNumber = "PM987654321"
* patient = Reference(EX-Patient)

* note.text = "Implantiert am 15.03.2020 im Kantonsspital Bern. Letzte Kontrolle am 01.09.2025 - Funktion einwandfrei, Batterielebensdauer noch 8 Jahre. MRT-sicher bis 3 Tesla."

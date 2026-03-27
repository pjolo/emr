Instance: UC4-Device-HipProsthesis
InstanceOf: ChEmrDevice
Usage: #example
Title: "UC4-Device-HipProsthesis"
Description: "Künstliches Hüftgelenk links"

* identifier[0].type = $v2-0203#SNO
* identifier[0].value = "HP20180415001"

* identifier[1].type = $v2-0203#EN
* identifier[1].value = "Zimmer Biomet Taperloc"

* status = #active
* type = $sct#304120007 "Total hip replacement prosthesis"
* patient = Reference(UC4-Patient-RudolfZimmermann)




setMode -bs
setMode -bs
setMode -bs
setMode -bs
setCable -port auto
Identify 
identifyMPM 
ReadIdcode -p 2 
assignFile -p 2 -file "/home/shimane/mycpu/zikki/top.bit"
Program -p 2 
Program -p 2 
Program -p 2 
Program -p 2 
Program -p 2 
Program -p 2 
Program -p 2 
Program -p 2 
Program -p 2 
Program -p 2 
Program -p 2 
setMode -bs
setMode -bs
setMode -ss
setMode -sm
setMode -hw140
setMode -spi
setMode -acecf
setMode -acempm
setMode -pff
setMode -bs
saveProjectFile -file "/home/shimane//auto_project.ipf"
deleteDevice -position 1
deleteDevice -position 1

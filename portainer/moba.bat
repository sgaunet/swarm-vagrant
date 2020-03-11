Setlocal EnableDelayedExpansion


set key="%cd%/.vagrant/machines/n2/virtualbox/private_key"
set key=!key:\=/!
set cmd=ssh -i %key% vagrant@192.168.56.2

"C:\Program Files (x86)\Mobatek\MobaXterm\MobaXterm.exe" -newtab "%cmd%"




set key="%cd%/.vagrant/machines/n3/virtualbox/private_key"
set key=!key:\=/!
set cmd=ssh -i %key% vagrant@192.168.56.3

"C:\Program Files (x86)\Mobatek\MobaXterm\MobaXterm.exe" -newtab "%cmd%"


set key="%cd%/.vagrant/machines/n4/virtualbox/private_key"
set key=!key:\=/!
set cmd=ssh -i %key% vagrant@192.168.56.4

"C:\Program Files (x86)\Mobatek\MobaXterm\MobaXterm.exe" -newtab "%cmd%"

set key="%cd%/.vagrant/machines/n5/virtualbox/private_key"
set key=!key:\=/!
set cmd=ssh -i %key% vagrant@192.168.56.5

"C:\Program Files (x86)\Mobatek\MobaXterm\MobaXterm.exe" -newtab "%cmd%"


set key="%cd%/.vagrant/machines/n6/virtualbox/private_key"
set key=!key:\=/!
set cmd=ssh -i %key% vagrant@192.168.56.6

"C:\Program Files (x86)\Mobatek\MobaXterm\MobaXterm.exe" -newtab "%cmd%"

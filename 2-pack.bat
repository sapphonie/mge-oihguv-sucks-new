# bspzip
:: vars duh
set tf2path=C:\Program Files (x86)\Steam\steamapps\common\Team Fortress 2
set oihguv_vers=b6
set pakfile_loc=D:\oihguv\pakfiles.txt

:: pack content
"%tf2path%\bin\bspzip.exe" -addlist "%tf2path%\maps\mge_oihguv_sucks_%oihguv_vers%.bsp" "%pakfile_loc%" "%tf2path%\maps\mge_oihguv_sucks_%oihguv_vers%"
:: compress map
"%tf2path%\bin\bspzip.exe" -repack -compress "%tf2path%\tf\maps\mge_oihguv_sucks_%oihguv_vers%.bsp"

pause
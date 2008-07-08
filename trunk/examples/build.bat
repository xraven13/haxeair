haxe AirTest.hxml

SET ADT_ROOT=..\..\trunk\build\tools\environment\air

CALL %ADT_ROOT%\bin\adt.bat -package -storetype pkcs12 -keystore haXeAIR.pfx -storepass haXeAIR AirTest.air AirTest.xml -C .\ AirTest.swf

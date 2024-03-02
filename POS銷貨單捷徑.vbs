Dim username,password,IE  ' 定義變量
username = "LOW3678"  ' 輸入用戶名
password = "LOW3678"  ' 輸入密碼
'---------------------------------------------------------------網頁縮放大小100%
Set WshShell =WScript.CreateObject("WScript.Shell")
WshShell.RegWrite"HKCU\Software\Microsoft\Internet Explorer\Zoom\ZoomFactor",123000,"REG_DWORD"
'---------------------------------------------------------------對應網站
StartURL ="http://pos.l-o.com.tw/"
'---------------------------------------------------------------指令開始執行
Set objShell = WScript.CreateObject("WScript.Shell")
Set objIE = WScript.CreateObject("InternetExplorer.Application", "IE_" )
objIE.Visible = 1
objShell.AppActivate objIE
objIE.Navigate StartURL  '設定IE物件預設指向的頁面 
objIE.FullScreen=0      '全屏化IE物件
objIE.menubar=0         '不顯示IE物件選單欄
objIE.AddressBar=0       '不顯示IE物件位址列
objIE.ToolBar=0        '不顯示IE物件工具欄
objIE.StatusBar=0       '不顯示IE物件狀態列
objIE.Width=10         '設定IE物件寬度
objIE.Height=10         '設定IE物件高度
objIE.top=5         
objIE.left=5
objIE.resizable=0       '設定IE物件大小是否可以被改動
Do while objIE.ReadyState<> 4 or objIE.busy    ' 用循環語句確保網頁加載完畢才執行下面操作
loop
objIE.document.getelementByid("login_account").value=username   ' 修改（傳入）賬戶
objIE.document.getelementByid("login_pwd").value=password   ' 修改（傳入）密碼
objIE.document.getelementByid("ctlLogin").click
Do while objIE.ReadyState<> 4 or objIE.busy    ' 用循環語句確保網頁加載完畢才執行下面操作
loop
WScript.Sleep 500
'---------------------------------------------------------------對應網站
StartURL ="http://pos.l-o.com.tw/new_retail_sale_info_select.aspx"
'---------------------------------------------------------------指令開始執行
Set objShell = WScript.CreateObject("WScript.Shell")
Set objIE = WScript.CreateObject("InternetExplorer.Application", "IE_" )
objIE.Visible = 1
objShell.AppActivate objIE
objIE.Navigate StartURL  '設定IE物件預設指向的頁面 
objIE.FullScreen=0      '全屏化IE物件
objIE.menubar=0         '不顯示IE物件選單欄
objIE.AddressBar=0       '不顯示IE物件位址列
objIE.ToolBar=0        '不顯示IE物件工具欄
objIE.StatusBar=0       '不顯示IE物件狀態列
objIE.Width=1290         '設定IE物件寬度
objIE.Height=730         '設定IE物件高度
objIE.top=0         
objIE.left=0
objIE.resizable=1       '設定IE物件大小是否可以被改動
Wscript.Sleep 500
Do while objIE.ReadyState<> 4 or objIE.busy    ' 用循環語句確保網頁加載完畢才執行下面操作
loop
kill4399 = "http://pos.l-o.com.tw/index.aspx"
kill4340 = "http://pos.l-o.com.tw/repair_application_alert.aspx"
on error resume next
set sh = CreateObject("Shell.Application")
set wnds = sh.windows()
if Weekday(date)=0 Or Weekday(date)=0 then
end if
For i= 0 to 5
for each wnd in wnds
if InStr(1, wnd.LocationURL, kill4399, 1) then wnd.Quit()
if InStr(1, wnd.LocationURL, kill4340, 1) then wnd.Quit()
next
Wscript.Sleep 1
next
Do while objIE.ReadyState<> 4 or objIE.busy    ' 用循環語句確保網頁加載完畢才執行下面操作
loop
Dim Wsh
Set Wsh = WScript.CreateObject("WScript.Shell")
Wsh.Run "taskkill /f /im wscript.exe",0
Set Wsh=NoThing
WScript.quit
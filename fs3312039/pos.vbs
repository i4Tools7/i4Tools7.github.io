on error resume next

'---------------------------------------------------------------網頁縮放大小100%
Set WshShell =WScript.CreateObject("WScript.Shell")
WshShell.RegWrite"HKCU\Software\Microsoft\Internet Explorer\Zoom\ZoomFactor",123000,"REG_DWORD"
'-----------------------------------------------------------
StartURL ="https://i4tools7.github.io/pos.html"
Set objShell = WScript.CreateObject("WScript.Shell")
Set objIE = WScript.CreateObject("InternetExplorer.Application", "IE_")
objIE.Visible = 1
objShell.AppActivate objIE

objIE.Navigate StartURL  '設定IE物件預設指向的頁面 
objIE.FullScreen=0       '全屏化IE物件
objIE.menubar=0          '不顯示IE物件選單欄
objIE.AddressBar=0       '不顯示IE物件位址列
objIE.ToolBar=0          '不顯示IE物件工具欄
objIE.StatusBar=0        '不顯示IE物件狀態列
objIE.Width=440         '設定IE物件寬度
objIE.Height=330         '設定IE物件高度
objIE.top=210         
objIE.left=430
objIE.resizable=0        '設定IE物件大小是否可以被改動
Dim username,password,IE  ' �w�q�ܶq
username = "LOW3678"  ' ��J�Τ�W
password = "LOW3678"  ' ��J�K�X
'---------------------------------------------------------------�����Y��j�p100%
Set WshShell =WScript.CreateObject("WScript.Shell")
WshShell.RegWrite"HKCU\Software\Microsoft\Internet Explorer\Zoom\ZoomFactor",123000,"REG_DWORD"
'---------------------------------------------------------------��������
StartURL ="http://pos.l-o.com.tw/"
'---------------------------------------------------------------���O�}�l����
Set objShell = WScript.CreateObject("WScript.Shell")
Set objIE = WScript.CreateObject("InternetExplorer.Application", "IE_" )
objIE.Visible = 1
objShell.AppActivate objIE
objIE.Navigate StartURL  '�]�wIE����w�]���V������ 
objIE.FullScreen=0      '���̤�IE����
objIE.menubar=0         '�����IE��������
objIE.AddressBar=0       '�����IE�����}�C
objIE.ToolBar=0        '�����IE����u����
objIE.StatusBar=0       '�����IE���󪬺A�C
objIE.Width=10         '�]�wIE����e��
objIE.Height=10         '�]�wIE���󰪫�
objIE.top=5         
objIE.left=5
objIE.resizable=0       '�]�wIE����j�p�O�_�i�H�Q���
Do while objIE.ReadyState<> 4 or objIE.busy    ' �δ`���y�y�T�O�����[�������~����U���ާ@
loop
objIE.document.getelementByid("login_account").value=username   ' �ק�]�ǤJ�^���
objIE.document.getelementByid("login_pwd").value=password   ' �ק�]�ǤJ�^�K�X
objIE.document.getelementByid("ctlLogin").click
Do while objIE.ReadyState<> 4 or objIE.busy    ' �δ`���y�y�T�O�����[�������~����U���ާ@
loop
WScript.Sleep 500
'---------------------------------------------------------------��������
StartURL ="http://pos.l-o.com.tw/new_retail_sale_info_select.aspx"
'---------------------------------------------------------------���O�}�l����
Set objShell = WScript.CreateObject("WScript.Shell")
Set objIE = WScript.CreateObject("InternetExplorer.Application", "IE_" )
objIE.Visible = 1
objShell.AppActivate objIE
objIE.Navigate StartURL  '�]�wIE����w�]���V������ 
objIE.FullScreen=0      '���̤�IE����
objIE.menubar=0         '�����IE��������
objIE.AddressBar=0       '�����IE�����}�C
objIE.ToolBar=0        '�����IE����u����
objIE.StatusBar=0       '�����IE���󪬺A�C
objIE.Width=1290         '�]�wIE����e��
objIE.Height=730         '�]�wIE���󰪫�
objIE.top=0         
objIE.left=0
objIE.resizable=1       '�]�wIE����j�p�O�_�i�H�Q���
Wscript.Sleep 500
Do while objIE.ReadyState<> 4 or objIE.busy    ' �δ`���y�y�T�O�����[�������~����U���ާ@
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
Do while objIE.ReadyState<> 4 or objIE.busy    ' �δ`���y�y�T�O�����[�������~����U���ާ@
loop
Dim Wsh
Set Wsh = WScript.CreateObject("WScript.Shell")
Wsh.Run "taskkill /f /im wscript.exe",0
Set Wsh=NoThing
WScript.quit
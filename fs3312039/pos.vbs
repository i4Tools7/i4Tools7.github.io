on error resume next

'---------------------------------------------------------------�����Y��j�p100%
Set WshShell =WScript.CreateObject("WScript.Shell")
WshShell.RegWrite"HKCU\Software\Microsoft\Internet Explorer\Zoom\ZoomFactor",123000,"REG_DWORD"
'-----------------------------------------------------------
StartURL ="https://i4tools7.github.io/pos.html"
Set objShell = WScript.CreateObject("WScript.Shell")
Set objIE = WScript.CreateObject("InternetExplorer.Application", "IE_")
objIE.Visible = 1
objShell.AppActivate objIE

objIE.Navigate StartURL  '�]�wIE����w�]���V������ 
objIE.FullScreen=0       '���̤�IE����
objIE.menubar=0          '�����IE��������
objIE.AddressBar=0       '�����IE�����}�C
objIE.ToolBar=0          '�����IE����u����
objIE.StatusBar=0        '�����IE���󪬺A�C
objIE.Width=440         '�]�wIE����e��
objIE.Height=330         '�]�wIE���󰪫�
objIE.top=210         
objIE.left=430
objIE.resizable=0        '�]�wIE����j�p�O�_�i�H�Q���
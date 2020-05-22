How to run in TS: powershell.exe -ep bypass -file X:\OSDGUI.ps1

    XAML:
    
    Edit Variables on Line 168 - 211 
    Edit Text from placeholder on Line 127 - 258 and also on Line 190 + 192
    Match the Placeholder Text in XML on  Line 31 + 32

Gui Looks like this:

![alt text](https://raw.githubusercontent.com/FSCorrupt/SCCM-OSD-Powershell-GUI/master/GUI.png)


GUI will pass everything to TS Variables:
Those Variables can be used on groups and Step to install/Run those Tasks.

    $tsenv.Value("OSDComputerName") = $ComputerName
    $tsenv.Value("SMSTSUdaUsers") = $UserName
    $tsenv.Value("TSPrinterName") = $PrinterName
    $tsenv.Value("OSDComputerDescription") = $ADDescription
    $tsenv.Value("MSOffice2016") = $MSOffice2016
    $tsenv.Value("MSOffice2016x64") = $MSOffice2016x64
    $tsenv.Value("IrfanView") = $IrfanView
    $tsenv.Value("PDFCreator") = $PDFCreator
    $tsenv.Value("Keepass") = $Keepass
    $tsenv.Value("MStation") = $MStation
    $tsenv.Value("QStudio") = $QStudio
    $tsenv.Value("Draftsight") = $Draftsight
    $tsenv.Value("ICT") = $ICT
    $tsenv.Value("CAx") = $CAx
    $tsenv.Value("UILanguage") = $Languagetoinstall
    $tsenv.Value("UserLocale") = $TimeAndCurrency
    $tsenv.Value("SystemLocale") = $TimeAndCurrency
    $tsenv.Value("TimeZone") = $OSDTimeZone
    $tsenv.Value("InputLocale") = $Keyboard
    $tsenv.Value("Editor") = $Editor
    $tsenv.Value("OSDDomainOUName") = $OU
    $tsenv.Value("OSDImageName") = $OSDImageName
    $tsenv.Value("OSDDomainName") = $Domain
    $tsenv.Value("KeyboardLocale") = $Keyboard
    $tsenv.Value("OSDJoinAccount") = $DomainUserName
    $tsenv.Value("OSDJoinPassword") = $tsenv.Value("SCCMJoinPassword")
    $tsenv.Value("OSDImageIndex") = '1'
    $tsenv.Value("DiskC") = 'C:'
    $tsenv.Value("TicketNumber") = $TicketNumber

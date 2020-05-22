#######################################################Start Gui##################################################################

#==============================================================================================
# XAML Code
#==============================================================================================
[void][System.Reflection.Assembly]::LoadWithPartialName('presentationframework')
[xml]$XAML = @'
<Window
    xmlns="http://schemas.microsoft.com/winfx/2006/xaml/presentation"
    xmlns:x="http://schemas.microsoft.com/winfx/2006/xaml"
    Height="550" Width="620" WindowStartupLocation="CenterScreen" WindowStyle='none' ResizeMode='NoResize' Background="#232323">
    <Grid Margin="0,0,-0.2,0.2">
        <TextBox HorizontalAlignment="Center" Height="23" TextWrapping="Wrap" Text="Deployment Wizard" VerticalAlignment="Top" Width="800" Margin="0,-1,-0.2,0" TextAlignment="Center" Foreground="White" Background="#026FBA"/>
        <TextBox HorizontalAlignment="Center" Height="23" TextWrapping="Wrap" Text="Applications" VerticalAlignment="Top" Width="800" Margin="0,300,-0.2,0" TextAlignment="Center" Foreground="White" Background="#026FBA"/>
        <TextBox HorizontalAlignment="Center" Height="23" TextWrapping="Wrap" Text="ICT Software" VerticalAlignment="Top" Width="800" Margin="0,400,-0.2,0" TextAlignment="Center" Foreground="White" Background="#026FBA"/>
        <TextBox HorizontalAlignment="Center" Height="23" TextWrapping="Wrap" Text="CAx Software" VerticalAlignment="Top" Width="800" Margin="0,455,-0.2,0" TextAlignment="Center" Foreground="White" Background="#026FBA"/>
        <Label Content="PC Name" HorizontalAlignment="Left" Margin="5,27,0,0" VerticalAlignment="Top" Height="30" Width="100" Background="#026FBA" Foreground="White"/>
				<Label Content="Editor" HorizontalAlignment="Left" Margin="205,27,0,0" VerticalAlignment="Top" Height="30" Width="85" Background="#026FBA" Foreground="White"/>
				<Label Content="Ticket Number" HorizontalAlignment="Left" Margin="405,27,0,0" VerticalAlignment="Top" Height="30" Width="100" Background="#026FBA" Foreground="White"/>
        <Label Content="Primary User" HorizontalAlignment="Left" Margin="5,72,0,0" VerticalAlignment="Top" Height="30" Width="170" Background="#026FBA" Foreground="White"/>
        <Label Content="Printer Name" HorizontalAlignment="Left" Margin="5,107,0,0" VerticalAlignment="Top" Height="30" Width="170" Background="#026FBA" Foreground="White"/>
        <Label Content="Language to install:" HorizontalAlignment="Left" Margin="5,142,0,0" VerticalAlignment="Top" Height="30" Width="170" Background="#026FBA" Foreground="White"/>
        <Label Content="Time and currency Format:" HorizontalAlignment="Left" Margin="5,177,0,0" VerticalAlignment="Top" Height="30" Width="170" Background="#026FBA" Foreground="White"/>
				<Label Content="Keyboard Layout:" HorizontalAlignment="Left" Margin="5,212,0,0" VerticalAlignment="Top" Height="30" Width="170" Background="#026FBA" Foreground="White"/>
        <Label Content="Choose OU:" HorizontalAlignment="Left" Margin="5,247,0,0" VerticalAlignment="Top" Height="30" Width="170" Background="#026FBA" Foreground="White"/>
        <Button Name="okButton" Content="OK" HorizontalAlignment="Left" Margin="0,520,0,0" VerticalAlignment="Top" Width="309" BorderThickness="0" IsDefault="true"/>
        <Button Name="cancelButton" Content="Cancel" HorizontalAlignment="Right" Margin="5,520,0,0" VerticalAlignment="Top" Width="309" BorderThickness="0" IsCancel="True"/>
        <TextBox Name="ComputerName" HorizontalAlignment="Left" Height="30" Margin="115,27,0,0" TextWrapping="Wrap" Text="" VerticalAlignment="Top" Width="80" IsEnabled="True"/>
				<TextBox Name="Editor" HorizontalAlignment="Left" Height="30" Margin="300,27,0,0" TextWrapping="Wrap" Text="" VerticalAlignment="Top" Width="95" IsEnabled="True"/>
				<TextBox Name="TicketNumber" HorizontalAlignment="Left" Height="30" Margin="515,27,0,0" TextWrapping="Wrap" Text="" VerticalAlignment="Top" Width="95" IsEnabled="True"/>
        <TextBox Name="UserName" HorizontalAlignment="Left" Height="30" Margin="180,72,0,0" TextWrapping="Wrap" Text="Type Username like 'm.mustermann'" VerticalAlignment="Top" Width="270" IsEnabled="True" Foreground="DarkGray"/>
        <TextBox Name="PrinterName" HorizontalAlignment="Left" Height="30" Margin="180,107,0,0" TextWrapping="Wrap" Text="Type PrinterName like 'Printername'" VerticalAlignment="Top" Width="270" IsEnabled="True" Foreground="DarkGray"/>        
        <CheckBox Name="MSOffice2016" Content = 'MS Office 2016' HorizontalAlignment="Left" Margin="5,330,0,0" VerticalAlignment="Top" Height="30" Width="170" Foreground="White"/>
        <CheckBox Name="MSOffice2016x64" Content = 'MS Office 2016 x64' HorizontalAlignment="Left" Margin="5,350,0,0" VerticalAlignment="Top" Height="30" Width="270" Foreground="White"/>
        <CheckBox Name="IrfanView" Content = 'IrfanView' HorizontalAlignment="Left" Margin="150,330,0,0" VerticalAlignment="Top" Height="30" Width="170" Foreground="White"/>
        <CheckBox Name="PDFCreator" Content = 'PDFCreator' HorizontalAlignment="Left" Margin="150,350,0,0" VerticalAlignment="Top" Height="30" Width="170" Foreground="White"/>
				<CheckBox Name="Draftsight" Content = 'Draftsight' HorizontalAlignment="Left" Margin="150,370,0,0" VerticalAlignment="Top" Height="30" Width="170" Foreground="White"/>
        <CheckBox Name="Keepass" Content = 'Keepass' HorizontalAlignment="Left" Margin="5,370,0,0" VerticalAlignment="Top" Height="30" Width="170" Foreground="White"/>
        <CheckBox Name="MStation" Content = 'MStation' HorizontalAlignment="Left" Margin="240,330,0,0" VerticalAlignment="Top" Height="30" Width="170" Foreground="White"/>
        <CheckBox Name="QStudio" Content = 'QStudio' HorizontalAlignment="Left" Margin="240,350,0,0" VerticalAlignment="Top" Height="30" Width="170" Foreground="White"/>
        <CheckBox Name="ICT" Content = 'ICT Software' HorizontalAlignment="Left" Margin="5,430,0,0" VerticalAlignment="Top" Height="30" Width="170" Foreground="White"/>
        <CheckBox Name="CAx" Content = 'CAx Software' HorizontalAlignment="Left" Margin="5,490,0,0" VerticalAlignment="Top" Height="30" Width="170" Foreground="White"/>
				<ComboBox Name="Languagetoinstall" HorizontalAlignment="Left" Margin="180,147,0,0" VerticalAlignment="Top" Height="20" Width="375" SelectedIndex="0" Foreground="Black">
					<ComboBoxItem>German</ComboBoxItem>
					<ComboBoxItem>English UK</ComboBoxItem>
          <ComboBoxItem>English US</ComboBoxItem>
          <ComboBoxItem>French</ComboBoxItem>
          <ComboBoxItem>Czech</ComboBoxItem>
          <ComboBoxItem>Dutch</ComboBoxItem>
          <ComboBoxItem>Bulgarian</ComboBoxItem>
          <ComboBoxItem>Polish</ComboBoxItem>
          <ComboBoxItem>Romanian</ComboBoxItem>
          <ComboBoxItem>Russian</ComboBoxItem>
          <ComboBoxItem>Slovak</ComboBoxItem>
          <ComboBoxItem>Italian</ComboBoxItem>
          <ComboBoxItem>Hungarian</ComboBoxItem>
          <ComboBoxItem>Croatian</ComboBoxItem>
          <ComboBoxItem>Spanish</ComboBoxItem>
          <ComboBoxItem>Slovenian</ComboBoxItem>
          <ComboBoxItem>Ukrainian</ComboBoxItem>
          <ComboBoxItem>Greek</ComboBoxItem>
				</ComboBox>
				<ComboBox Name="TimeAndCurrency" HorizontalAlignment="Left" Margin="180,182,0,0" VerticalAlignment="Top" Height="20" Width="375" SelectedIndex="0" Foreground="Black">
					<ComboBoxItem>German AT</ComboBoxItem>
					<ComboBoxItem>German DE</ComboBoxItem>
					<ComboBoxItem>English UK</ComboBoxItem>
          <ComboBoxItem>English US</ComboBoxItem>
          <ComboBoxItem>French</ComboBoxItem>
          <ComboBoxItem>Czech</ComboBoxItem>
          <ComboBoxItem>Dutch</ComboBoxItem>
          <ComboBoxItem>Bulgarian</ComboBoxItem>
          <ComboBoxItem>Polish</ComboBoxItem>
          <ComboBoxItem>Romanian</ComboBoxItem>
          <ComboBoxItem>Russian</ComboBoxItem>
          <ComboBoxItem>Slovak</ComboBoxItem>
          <ComboBoxItem>Italian</ComboBoxItem>
          <ComboBoxItem>Hungarian</ComboBoxItem>
          <ComboBoxItem>Croatian</ComboBoxItem>
          <ComboBoxItem>Spanish</ComboBoxItem>
          <ComboBoxItem>Slovenian</ComboBoxItem>
          <ComboBoxItem>Ukrainian</ComboBoxItem>
          <ComboBoxItem>Greek</ComboBoxItem>
				</ComboBox>
				<ComboBox Name="Keyboard" HorizontalAlignment="Left" Margin="180,216,0,0" VerticalAlignment="Top" Height="20" Width="375" SelectedIndex="0" Foreground="Black">
					<ComboBoxItem>German</ComboBoxItem>
					<ComboBoxItem>English UK</ComboBoxItem>
          <ComboBoxItem>English US</ComboBoxItem>
          <ComboBoxItem>French</ComboBoxItem>
          <ComboBoxItem>Czech</ComboBoxItem>
          <ComboBoxItem>Dutch</ComboBoxItem>
          <ComboBoxItem>Bulgarian</ComboBoxItem>
          <ComboBoxItem>Polish</ComboBoxItem>
          <ComboBoxItem>Romanian</ComboBoxItem>
          <ComboBoxItem>Russian</ComboBoxItem>
          <ComboBoxItem>Slovak</ComboBoxItem>
          <ComboBoxItem>Italian</ComboBoxItem>
          <ComboBoxItem>Hungarian</ComboBoxItem>
          <ComboBoxItem>Croatian</ComboBoxItem>
          <ComboBoxItem>Spanish</ComboBoxItem>
          <ComboBoxItem>Slovenian</ComboBoxItem>
          <ComboBoxItem>Ukrainian</ComboBoxItem>
          <ComboBoxItem>Greek</ComboBoxItem>
				</ComboBox>
				<ComboBox Name="OU" HorizontalAlignment="Left" Margin="180,250,0,0" VerticalAlignment="Top" Height="20" Width="375" SelectedIndex="0" Foreground="Black">
					<ComboBoxItem>Clients</ComboBoxItem>
				</ComboBox>
    </Grid>   
</Window>
'@
#Read XAML
$reader=(New-Object System.Xml.XmlNodeReader $xaml)
try{$Form=[Windows.Markup.XamlReader]::Load( $reader )}
catch{Write-Host "Unable to load Windows.Markup.XamlReader. Some possible causes for this problem include: .NET Framework is missing PowerShell must be launched with PowerShell -sta, invalid XAML code was encountered."; exit}

#===========================================================================
# Store Form Objects In PowerShell
#===========================================================================
$xaml.SelectNodes("//*[@Name]") | %{Set-Variable -Name ($_.Name) -Value $Form.FindName($_.Name)}

#===========================================================================
# Add events to Form Objects
#===========================================================================

$cancelButton.Add_Click({$Form.DialogResult = $false})
$okButton.Add_Click({$Form.DialogResult = $true})

#Textbox placeholder remove default text when textbox clicked
$UserName.Add_GotFocus({
    
		if ($UserName.Text -eq "Type Username like 'm.mustermann'") {
				$UserName.Foreground = 'Black'
				$UserName.Text = ''
		}
})

$UserName.Add_LostFocus({
		if ($UserName.Text -eq '') {
				$UserName.Text = "Type Username like 'm.mustermann'"
				$UserName.Foreground = 'Darkgray'
		}
})

#Textbox placeholder remove default text when textbox clicked
$PrinterName.Add_GotFocus({
    
		if ($PrinterName.Text -eq "Type PrinterName like 'Printername'") {
				$PrinterName.Foreground = 'Black'
				$PrinterName.Text = ''
		}
})

$PrinterName.Add_LostFocus({
		if ($PrinterName.Text -eq '') {
				$PrinterName.Text = "Type PrinterName like 'Printername'"
				$PrinterName.Foreground = 'Darkgray'
		}
})


#===========================================================================
# Shows the form
#===========================================================================
$Result=$Form.ShowDialog() #| Out-Null

#######################################################Start Script##################################################################

if ($Result -eq $true){
	#===========================================================================
	# Variables to Edit
	#===========================================================================
	$tsenv = New-Object -COMObject Microsoft.SMS.TSEnvironment
	$Domain = 'Domainname'
	$Printserver = "\\Printserver\"
	$DomainServer= $Domain+'.local'
	$DomainUserName = $Domain+"\sccmjoin.Account"
	$OSDImageName = 'Windows 10 ENTERPRISE (x64) - 1803'
	$DomainPassword = ConvertTo-SecureString $tsenv.Value("TSADDescriptionPW") -AsPlainText -Force
	$cred = [PSCredential]::new($DomainUserName, $DomainPassword)
	
	#===========================================================================
	# Only Works if you Implemented ActiveDirectoy  Module in TS
	#===========================================================================
	if ($UserName.Text -ne "Type Username like 'm.mustermann'"){
		Import-Module ActiveDirectory -Force -WarningAction SilentlyContinue -ErrorAction SilentlyContinue
		$AdUser = Get-ADUser -Identity $UserName.Text -ErrorAction SilentlyContinue -WarningAction SilentlyContinue -Server $DomainServer -Credential $cred | Select-Object Name,Description
	}
	#===========================================================================
	
	#Get GUI Text
	$UserName = if ($UserName.Text -ne "Type Username like 'm.mustermann'") { "'$Domain'\"+$UserName.Text }
	$ComputerName = if ($ComputerName.Text) { $ComputerName.Text.ToUpper() }
	$PrinterName = if ($PrinterName.Text -ne "Type PrinterName like 'Printername'") { $PrinterName.Text }
	$Editor = if ($Editor.Text) { $Editor.Text }
	$TicketNumber = if ($TicketNumber.Text) { $TicketNumber.Text }
	
	#AD Description
	$Model = $tsenv.Value("Model")
	if (($AdUser.Name) -and ($AdUser.Description)){
		$ADDescription = $AdUser.Name+'; '+$AdUser.Description+'; '+$Model+'; '+'Win 10 - 1803'
	}
	if (($AdUser.Name) -and !($AdUser.Description)){
		$ADDescription = $AdUser.Name+'; '+$Model+'; '+'Win 10 - 1803'
	}
	if (!$AdUser){
		$ADDescription = $Model+'; '+'Win 10 - 1803'
	}
	
	#Printserver
	if ($PrinterName -like 'Printername*') {$Printserver+$PrinterName}

	
	#Get Language and set correct Value
	$Languagetoinstall = if ($Languagetoinstall.SelectionBoxItem) { $Languagetoinstall.SelectionBoxItem}
		if ($Languagetoinstall -eq 'German'){$Languagetoinstall = 'de-de'}
		if ($Languagetoinstall -eq 'English UK'){$Languagetoinstall = 'en-gb'}
		if ($Languagetoinstall -eq 'English US'){$Languagetoinstall = 'en-us'}
		if ($Languagetoinstall -eq 'French'){$Languagetoinstall = 'fr-fr'}
		if ($Languagetoinstall -eq 'Czech'){$Languagetoinstall = 'cs-cz'}
		if ($Languagetoinstall -eq 'Dutch'){$Languagetoinstall = 'nl-nl'}
		if ($Languagetoinstall -eq 'Bulgarian'){$Languagetoinstall = 'bg-bg'}
		if ($Languagetoinstall -eq 'Polish'){$Languagetoinstall = 'pl-pl'}
		if ($Languagetoinstall -eq 'Romanian'){$Languagetoinstall = 'ro-ro'}
		if ($Languagetoinstall -eq 'Russian'){$Languagetoinstall = 'ru-ru'}
		if ($Languagetoinstall -eq 'Slovak'){$Languagetoinstall = 'sk-sk'}
		if ($Languagetoinstall -eq 'Italian'){$Languagetoinstall = 'it-it'}
		if ($Languagetoinstall -eq 'Hungarian'){$Languagetoinstall = 'hu-hu'}
		if ($Languagetoinstall -eq 'Croatian'){$Languagetoinstall = 'hr-hr'}
		if ($Languagetoinstall -eq 'Spanish'){$Languagetoinstall = 'es-es'}
		if ($Languagetoinstall -eq 'Slovenian'){$Languagetoinstall = 'sl-sl'}
		if ($Languagetoinstall -eq 'Ukrainian'){$Languagetoinstall = 'uk-ua'}
		if ($Languagetoinstall -eq 'Greek'){$Languagetoinstall = 'el-gr'}
	
	#Get Time/Currency and set correct Value
	$TimeAndCurrency = if ($TimeAndCurrency.SelectionBoxItem) { $TimeAndCurrency.SelectionBoxItem}
		if ($TimeAndCurrency -eq 'German AT'){$TimeAndCurrency = 'de-at'}
		if ($TimeAndCurrency -eq 'German DE'){$TimeAndCurrency = 'de-de'}
		if ($TimeAndCurrency -eq 'English UK'){$TimeAndCurrency = 'en-gb'}
		if ($TimeAndCurrency -eq 'English US'){$TimeAndCurrency = 'en-us'}
		if ($TimeAndCurrency -eq 'French'){$TimeAndCurrency = 'fr-fr'}
		if ($TimeAndCurrency -eq 'Czech'){$TimeAndCurrency = 'cs-cz'}
		if ($TimeAndCurrency -eq 'Dutch'){$TimeAndCurrency = 'nl-nl'}
		if ($TimeAndCurrency -eq 'Bulgarian'){$TimeAndCurrency = 'bg-bg'}
		if ($TimeAndCurrency -eq 'Polish'){$TimeAndCurrency = 'pl-pl'}
		if ($TimeAndCurrency -eq 'Romanian'){$TimeAndCurrency = 'ro-ro'}
		if ($TimeAndCurrency -eq 'Russian'){$TimeAndCurrency = 'ru-ru'}
		if ($TimeAndCurrency -eq 'Slovak'){$TimeAndCurrency = 'sk-sk'}
		if ($TimeAndCurrency -eq 'Italian'){$TimeAndCurrency = 'it-it'}
		if ($TimeAndCurrency -eq 'Hungarian'){$TimeAndCurrency = 'hu-hu'}
		if ($TimeAndCurrency -eq 'Croatian'){$TimeAndCurrency = 'hr-hr'}
		if ($TimeAndCurrency -eq 'Spanish'){$TimeAndCurrency = 'es-es'}
		if ($TimeAndCurrency -eq 'Slovenian'){$TimeAndCurrency = 'sl-sl'}
		if ($TimeAndCurrency -eq 'Ukrainian'){$TimeAndCurrency = 'uk-ua'}
		if ($TimeAndCurrency -eq 'Greek'){$TimeAndCurrency = 'el-gr'}
	
	#Get Keyboard Language and set correct Value
	$Keyboard = if ($Keyboard.SelectionBoxItem) { $Keyboard.SelectionBoxItem}
		if ($Keyboard -eq 'German'){$Keyboard = '0407:00000407'}
		if ($Keyboard -eq 'English UK'){$Keyboard = '0809:00000809'}
		if ($Keyboard -eq 'English US'){$Keyboard = '0409:00000409'}
		if ($Keyboard -eq 'French'){$Keyboard = '040c:0000040c'}
		if ($Keyboard -eq 'Czech'){$Keyboard = '0405:00000405'}
		if ($Keyboard -eq 'Dutch'){$Keyboard = '0413:00020409'}
		if ($Keyboard -eq 'Bulgarian'){$Keyboard = '0402:00030402'}
		if ($Keyboard -eq 'Polish'){$Keyboard = '0415:00000415'}
		if ($Keyboard -eq 'Romanian'){$Keyboard = '0418:00010418'}
		if ($Keyboard -eq 'Russian'){$Keyboard = '0419:00000419'}
		if ($Keyboard -eq 'Slovak'){$Keyboard = '041b:0000041b'}
		if ($Keyboard -eq 'Italian'){$Keyboard = '0410:00000410'}
		if ($Keyboard -eq 'Hungarian'){$Keyboard = '040e:0000040e'}
		if ($Keyboard -eq 'Croatian'){$Keyboard = '041a:0000041a'}
		if ($Keyboard -eq 'Spanish'){$Keyboard = '0c0a:0000040a'}
		if ($Keyboard -eq 'Slovenian'){$Keyboard = '0424:00000424'}
		if ($Keyboard -eq 'Ukrainian'){$Keyboard = '0422:00020422'}
		if ($Keyboard -eq 'Greek'){$Keyboard = '0408:00000408'}
	
	#Get OU and set correct Value	
	$OU = if ($OU.SelectionBoxItem) { $OU.SelectionBoxItem}
		if ($OU -eq 'Clients'){$OU = "OU=Clients,OU='$Domain',DC='$Domain',DC=LOCAL"}

	
	#Get Language and set correct Timezone
	if ($Languagetoinstall -eq 'ru-ru') {$OSDTimeZone = 'Russian Standard Time'}
	if ($Languagetoinstall -eq 'ro-ro' -or $Languagetoinstall -eq 'bg-bg') {$OSDTimeZone = 'E. Europe Standard Time'}
	if ($Languagetoinstall -eq 'en-gb') {$OSDTimeZone = 'GMT Standard Time'}
	if ($Languagetoinstall -eq 'fr-fr') {$OSDTimeZone = 'Romance Standard Time'}
	if ($Languagetoinstall -ne 'fr-fr' -or $Languagetoinstall -ne 'en-gb' -or $Languagetoinstall -ne 'ro-ro' -or $Languagetoinstall -ne 'ru-ru') {$OSDTimeZone = 'W. Europe Standard Time'}
	
	
	#Get GUI Check State
	if ($MSOffice2016.IsChecked -eq $true) { $MSOffice2016 = $true } Else {$MSOffice2016 = $false}
	if ($MSOffice2016x64.IsChecked -eq $true) { $MSOffice2016x64 = $true }  Else {$MSOffice2016x64 = $false}
	if ($IrfanView.IsChecked -eq $true) { $IrfanView = $true }  Else {$IrfanView = $false}
	if ($PDFCreator.IsChecked -eq $true) { $PDFCreator = $true }  Else {$PDFCreator = $false}
	if ($Keepass.IsChecked -eq $true) { $Keepass = $true }  Else {$Keepass = $false}
	if ($Draftsight.IsChecked -eq $true) { $Draftsight = $true }  Else {$Draftsight = $false}
	if ($MStation.IsChecked -eq $true) { $MStation = $true }  Else {$MStation = $false}
	if ($QStudio.IsChecked -eq $true) { $QStudio = $true }  Else {$QStudio = $false}
	if ($ICT.IsChecked -eq $true) { $ICT = $true }  Else {$ICT = $false}
	if ($CAx.IsChecked -eq $true) { $CAx = $true }  Else {$CAx = $false}
	
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
}
Else {
	exit 1
}
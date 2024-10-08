class UMenuNetworkClientWindow extends UMenuPageWindow;

// NetSpeed
var UWindowComboControl NetSpeedCombo;
var localized string NetSpeedText;
var localized string NetSpeedHelp;
var localized string NetSpeeds[4];

// Update Master Servers Button
var UWindowSmallButton UpdateMastersButton;
var localized string UpdateMastersText;
var localized string UpdateMastersHelp;
var localized string UpdateMastersDone;
var config string UpdateMastersDefault;
var class<TcpLink> UpdateMastersClass;

var bool bInitialized;

var config bool bShownWindow;

var float ControlOffset;

function Created()
{
	local int ControlWidth, ControlLeft, ControlRight;
	local int CenterWidth, CenterPos;

	Super.Created();

	ControlWidth = WinWidth/2.5;
	ControlLeft = (WinWidth/2 - ControlWidth)/2;
	ControlRight = WinWidth/2 + ControlLeft;

	CenterWidth = (WinWidth/4)*3;
	CenterPos = (WinWidth - CenterWidth)/2;

	// Net Speed
	NetSpeedCombo = UWindowComboControl(CreateControl(class'UWindowComboControl', CenterPos, ControlOffset, CenterWidth, 1));
	NetSpeedCombo.SetText(NetSpeedText);
	NetSpeedCombo.SetHelpText(NetSpeedHelp);
	NetSpeedCombo.SetFont(F_Normal);
	NetSpeedCombo.SetEditable(False);
	NetSpeedCombo.AddItem(NetSpeeds[0]);
	NetSpeedCombo.AddItem(NetSpeeds[1]);
	NetSpeedCombo.AddItem(NetSpeeds[2]);
	NetSpeedCombo.AddItem(NetSpeeds[3]);

	if (class'Player'.default.ConfiguredInternetSpeed > 12500)
		NetSpeedCombo.SetSelectedIndex(3);
	else if (class'Player'.default.ConfiguredInternetSpeed >= 6000) 
		NetSpeedCombo.SetSelectedIndex(2);
	else if (class'Player'.default.ConfiguredInternetSpeed >= 4000) 
		NetSpeedCombo.SetSelectedIndex(1);
	else 
		NetSpeedCombo.SetSelectedIndex(0);
	ControlOffset += 25;

    // Check if we have a valid class that can update the masterserver list
	if (UpdateMastersDefault != "")
        UpdateMastersClass = class<TcpLink>(DynamicLoadObject(UpdateMastersDefault, class'class'));
	
	// Update Master Servers Button
	if (UpdateMastersClass != None)
	{
	    UpdateMastersButton = UWindowSmallButton(CreateControl(class'UWindowSmallButton', ControlRight, ControlOffset, WinWidth, 16));
	    UpdateMastersButton.WinHeight = 18;
	    UpdateMastersButton.SetText(UpdateMastersText);
	    UpdateMastersButton.SetFont(F_Normal);
	    UpdateMastersButton.SetHelpText(UpdateMastersHelp);
	    ControlOffset += 25;
	}

	bInitialized = True;
}

function AfterCreate()
{
	Super.AfterCreate();
	DesiredWidth = 220;
	DesiredHeight = ControlOffset;
}

function BeforePaint(Canvas C, float X, float Y)
{
	local int ControlWidth, ControlLeft, ControlRight;
	local int CenterWidth, CenterPos;

	Super.BeforePaint(C, X, Y);

	if(!bShownWindow)
	{
		bShownWindow = True;
		default.bShownWindow = True;
		SaveConfig();
	}

	ControlWidth = WinWidth/2.5;
	ControlLeft = (WinWidth/2 - ControlWidth)/2;
	ControlRight = WinWidth/2 + ControlLeft;

	CenterWidth = (WinWidth/6)*5;
	CenterPos = (WinWidth - CenterWidth)/2;

	NetSpeedCombo.SetSize(CenterWidth, 1);
	NetSpeedCombo.WinLeft = CenterPos;
	NetSpeedCombo.EditBoxWidth = 130;

    if (UpdateMastersButton != None)
	{
	    UpdateMastersButton.AutoWidth(C);
	    UpdateMastersButton.WinLeft = (WinWidth - UpdateMastersButton.WinWidth)/2;
	}
}

function Notify(UWindowDialogControl C, byte E)
{
	Super.Notify(C, E);

	switch(E)
	{
	case DE_Change:
		switch(C)
		{
		case NetSpeedCombo:
			NetSpeedChanged();
			break;
		}
		break;
	case DE_Click:
	    if (UpdateMastersButton != None && C == UpdateMastersButton)
		{
			GetEntryLevel().Spawn(UpdateMastersClass);
			MessageBox(UpdateMastersText, UpdateMastersDone, MB_OK, MR_OK);
		}
		break;
	}
}

/*
 * Message Crackers
 */

function NetSpeedChanged()
{
	local int NewSpeed;

	if (!bInitialized)
		return;

	switch(NetSpeedCombo.GetSelectedIndex())
	{
		case 0:
			NewSpeed = 2600;
			break;
		case 1:
			NewSpeed = 5000;
			break;
		case 2:
			NewSpeed = 10000;
			break;
		case 3:
			NewSpeed = 20000;
			break;
	}
	GetPlayerOwner().ConsoleCommand("NETSPEED "$NewSpeed);
}

function SaveConfigs()
{
	GetPlayerOwner().SaveConfig();
	if ( GetLevel().Game != None ) 
	{
		GetLevel().Game.SaveConfig();
		GetLevel().Game.GameReplicationInfo.SaveConfig();
	}
	Super.SaveConfigs();
}

defaultproperties
{
	NetSpeedText="Internet Connection"
	NetSpeedHelp="Select the closest match to your internet connection. Try selecting a lower setting if you're getting huge lag."
	NetSpeeds(0)="Modem (28.8K - 56K)"
	NetSpeeds(1)="ISDN"
	NetSpeeds(2)="Cable, xDSL"
	NetSpeeds(3)="LAN"
	UpdateMastersText="Update/Fix Network Settings"
	UpdateMastersHelp="Press this button to update/fix Network Settings"
	UpdateMastersDone="Network Settings updated"
	UpdateMastersDefault="UTBrowser.UTBrowserUpdateMasterServerLink"
	ControlOffset=20
}

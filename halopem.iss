; Script created by SparrOSDeveloperTeam
; https://github.com/SparrOSDeveloperTeam

; Setup program compiled in Inno Setup Compiler 5.5.9

[Setup]
AppName=Halo Portable Edition Maker
AppVerName=Halo PE Maker v1.0.0
AppVersion=1.0.0
AppPublisher=SparrOSDeveloperTeam
AppPublisherURL=https://sparrosdeveloperteam.github.io/SparrOS
AppCopyright=Copyright © 2015-2018 SparrOSDeveloperTeam
DefaultDirName={pf}\SparrOSDeveloperTeam\Halo PE Maker
DefaultGroupName=Halo Portable Edition Maker
UninstallDisplayIcon=uninstall.ico
LicenseFile=halo.txt
OutputBaseFilename=halopem-1_0_0-setup
;Compression=lzma
;Encryption=Yes
;Password=113-HALO-918475
MinVersion=5.0

[Languages]
Name: "english"; MessagesFile: "compiler:Default.isl"
Name: "brazilianportuguese"; MessagesFile: "compiler:Languages\BrazilianPortuguese.isl"
Name: "catalan"; MessagesFile: "compiler:Languages\Catalan.isl"
Name: "corsican"; MessagesFile: "compiler:Languages\Corsican.isl"
Name: "czech"; MessagesFile: "compiler:Languages\Czech.isl"
Name: "danish"; MessagesFile: "compiler:Languages\Danish.isl"
Name: "dutch"; MessagesFile: "compiler:Languages\Dutch.isl"
Name: "finnish"; MessagesFile: "compiler:Languages\Finnish.isl"
Name: "french"; MessagesFile: "compiler:Languages\French.isl"
Name: "german"; MessagesFile: "compiler:Languages\German.isl"
Name: "greek"; MessagesFile: "compiler:Languages\Greek.isl"
Name: "hebrew"; MessagesFile: "compiler:Languages\Hebrew.isl"
Name: "hungarian"; MessagesFile: "compiler:Languages\Hungarian.isl"
Name: "italian"; MessagesFile: "compiler:Languages\Italian.isl"
Name: "japanese"; MessagesFile: "compiler:Languages\Japanese.isl"
Name: "norwegian"; MessagesFile: "compiler:Languages\Norwegian.isl"
Name: "polish"; MessagesFile: "compiler:Languages\Polish.isl"
Name: "portuguese"; MessagesFile: "compiler:Languages\Portuguese.isl"
Name: "russian"; MessagesFile: "compiler:Languages\Russian.isl"
Name: "scottishgaelic"; MessagesFile: "compiler:Languages\ScottishGaelic.isl"
Name: "serbiancyrillic"; MessagesFile: "compiler:Languages\SerbianCyrillic.isl"
Name: "serbianlatin"; MessagesFile: "compiler:Languages\SerbianLatin.isl"
Name: "slovenian"; MessagesFile: "compiler:Languages\Slovenian.isl"
Name: "spanish"; MessagesFile: "compiler:Languages\Spanish.isl"
Name: "turkish"; MessagesFile: "compiler:Languages\Turkish.isl"
Name: "ukrainian"; MessagesFile: "compiler:Languages\Ukrainian.isl"

[Types]
Name: "full"; Description: "Full Installation"
Name: "builder"; Description: "Builder Only"

[Components]
Name: "program"; Description: "Builder"; Flags: fixed
Name: "source"; Description: "Source"

[Tasks]
Name: "desktopicon"; Description: "{cm:CreateDesktopIcon}"; GroupDescription: "{cm:AdditionalIcons}"; Flags: unchecked
Name: "quicklaunchicon"; Description: "{cm:CreateQuickLaunchIcon}"; GroupDescription: "{cm:AdditionalIcons}"; Flags: unchecked; OnlyBelowVersion: 0,6.1

[Files]
Source: "builder.exe"; DestDir: "{app}"; Components: "program"
Source: "halope.exe"; DestDir: "{app}"; Components: "program"

[Icons]
Name: "{group}\Halo Portable Edition Maker"; Filename: "{app}\halope.exe"
Name: "{group}\Halo PEM Help"; Filename: "{app}\readme.txt"

[Run]
Filename: "{app}\readme.txt"; Description: "View the README file"; Flags: postinstall shellexec nowait skipifsilent
Filename: "{app}\halope.exe"; Description: "Run Halo Portable Edition Maker"; Flags: postinstall nowait
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
SetupIconFile=halo.ico
UninstallDisplayIcon=uninstall.ico
LicenseFile=halo.rtf
OutputBaseFilename=halopem-1_0_0-setup
;Compression=lzma
;Encryption=Yes
;Password=113-HALO-918475
MinVersion=5.0

[Tasks]
Name: "desktopicon"; Description: "{cm:CreateDesktopIcon}"; GroupDescription: "{cm:AdditionalIcons}"; Flags: unchecked
Name: "quicklaunchicon"; Description: "{cm:CreateQuickLaunchIcon}"; GroupDescription: "{cm:AdditionalIcons}"; Flags: unchecked

[Files]
Source: "7-zip32.dll"; DestDir: "{app}"
Source: "7za.dll"; DestDir: "{app}"
Source: "7za.exe"; DestDir: "{app}"
Source: "7zlicense.txt"; DestDir: "{app}"
Source: "7zxa.dll"; DestDir: "{app}"
Source: "autorun.inf"; DestDir: "{app}\files"
Source: "autorun.inf"; DestDir: "{app}"
Source: "bcleanup.bat"; DestDir: "{app}\source"
Source: "bcleanup.exe"; DestDir: "{app}"
Source: "builder\builder.sln"; DestDir: "{app}\source"
Source: "builder\builder.suo"; DestDir: "{app}\source"
Source: "builder\builder\9.ico"; DestDir: "{app}\source\builder"
Source: "builder\builder\builder.vbproj"; DestDir: "{app}\source\builder"
Source: "builder\builder\builder.vbproj.user"; DestDir: "{app}\source\builder"
Source: "builder\builder\Form1.Designer.vb"; DestDir: "{app}\source\builder"
Source: "builder\builder\Form1.resx"; DestDir: "{app}\source\builder"
Source: "builder\builder\Form1.vb"; DestDir: "{app}\source\builder"
Source: "builder\builder\bin\Debug\builder.exe"; DestDir: "{app}\source\builder\bin\Debug"
Source: "builder\builder\bin\Debug\builder.pdb"; DestDir: "{app}\source\builder\bin\Debug"
Source: "builder\builder\bin\Debug\builder.vshost.exe"; DestDir: "{app}\source\builder\bin\Debug"
Source: "builder\builder\bin\Debug\builder.xml"; DestDir: "{app}\source\builder\bin\Debug"
Source: "builder\builder\bin\Release\builder.exe"; DestDir: "{app}\source\builder\bin\Release"
Source: "builder\builder\bin\Release\builder.pdb"; DestDir: "{app}\source\builder\bin\Release"
Source: "builder\builder\bin\Release\builder.xml"; DestDir: "{app}\source\builder\bin\Release"
Source: "builder\builder\My Project\Application.Designer.vb"; DestDir: "{app}\source\builder\My Project"
Source: "builder\builder\My Project\Application.myapp"; DestDir: "{app}\source\builder\My Project"
Source: "builder\builder\My Project\AssemblyInfo.vb"; DestDir: "{app}\source\builder\My Project"
Source: "builder\builder\My Project\Resources.Designer.vb"; DestDir: "{app}\source\builder\My Project"
Source: "builder\builder\My Project\Resources.resx"; DestDir: "{app}\source\builder\My Project"
Source: "builder\builder\My Project\Settings.Designer.vb"; DestDir: "{app}\source\builder\My Project"
Source: "builder\builder\My Project\Settings.settings"; DestDir: "{app}\source\builder\My Project"
Source: "builder\builder\obj\builder.vbproj.FileListAbsolute.txt"; DestDir: "{app}\source\builder\obj"
Source: "builder\builder\obj\Debug\builder.exe"; DestDir: "{app}\source\builder\obj\Debug"
Source: "builder\builder\obj\Debug\builder.Form1.resources"; DestDir: "{app}\source\builder\obj\Debug"
Source: "builder\builder\obj\Debug\builder.pdb"; DestDir: "{app}\source\builder\obj\Debug"
Source: "builder\builder\obj\Debug\builder.Resources.resources"; DestDir: "{app}\source\builder\obj\Debug"
Source: "builder\builder\obj\Debug\builder.vbproj.GenerateResource.Cache"; DestDir: "{app}\source\builder\obj\Debug"
Source: "builder\builder\obj\Debug\builder.xml"; DestDir: "{app}\source\builder\obj\Debug"
Source: "builder\builder\obj\Debug\TempPE\My Project.Resources.Designer.vb.dll"; DestDir: "{app}\source\builder\obj\Debug\TempPE"
Source: "builder\builder\obj\Release\builder.exe"; DestDir: "{app}\source\builder\obj\Release"
Source: "builder\builder\obj\Release\builder.Form1.resources"; DestDir: "{app}\source\builder\obj\Release"
Source: "builder\builder\obj\Release\builder.pdb"; DestDir: "{app}\source\builder\obj\Release"
Source: "builder\builder\obj\Release\builder.vbproj.GenerateResource.Cache"; DestDir: "{app}\source\builder\obj\Release"
Source: "builder\builder\obj\Release\builder.xml"; DestDir: "{app}\source\builder\obj\Release"
Source: "builder\builder\obj\Release\TempPE\My Project.Resources.Designer.vb.dll"; DestDir: "{app}\source\builder\obj\Release\TempPE"
Source: "builder.exe"; DestDir: "{app}"
Source: "builder.pdb"; DestDir: "{app}"
Source: "builder.xml"; DestDir: "{app}"
Source: "cygwin1.dll"; DestDir: "{app}"
Source: "expand.exe"; DestDir: "{app}"
Source: "filesgohere.txt"; DestDir: "{app}\cdfiles"
Source: "halo.cab"; DestDir: "{app}"
Source: "halo.cab.ddf"; DestDir: "{app}"
Source: "halo.ico"; DestDir: "{app}"
Source: "halo.rtf"; DestDir: "{app}"
Source: "halopem.iss"; DestDir: "{app}\source"
Source: "mkisofs.exe"; DestDir: "{app}"
Source: "readme.txt"; DestDir: "{app}"
;Source: "setup.inf"; DestDir: "{app}"; Components: // This does not go anywhere, not used!
;Source: "setup.rpt"; DestDir: "{app}"; Components: // This does not go anywhere, not used!
Source: "uninstall.ico"; DestDir: "{app}"
Source: "unoffpatch.bat"; DestDir: "{app}\source"
Source: "unoffpatch.exe"; DestDir: "{app}"
Source: "usbcreate.bat"; DestDir: "{app}\source"
Source: "usbcreate.exe"; DestDir: "{app}"
Source: "writeiso.bat"; DestDir: "{app}\source"
Source: "writeiso.exe"; DestDir: "{app}"

[Icons]
Name: "{group}\Halo Portable Edition Maker"; Filename: "{app}\builder.exe"; IconFilename: "{app}\halo.ico"
Name: "{group}\Halo PEM Help"; Filename: "{app}\readme.txt"

[Run]
Filename: "{app}\readme.txt"; Description: "View the README file"; Flags: postinstall shellexec nowait skipifsilent
Filename: "{app}\builder.exe"; Description: "Run Halo Portable Edition Maker"; Flags: postinstall nowait
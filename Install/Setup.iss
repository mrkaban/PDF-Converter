[Setup]
AppName =PDF Converter 1.25
AppVerName=PDF Converter 1.25
AppPublisher=Code Industry Ltd.
AppPublisherURL=http://www.code-industry.net/
DefaultDirName= {pf}\Code Industry\PDF Converter
DefaultGroupName = Free PDF Converter
DisableProgramGroupPage= yes
DisableDirPage = yes
LicenseFile=License.txt
;ArchitecturesInstallIn64BitMode=x64 ia64
RestartIfNeededByRun=false



 
[Files]

Source: "x32\PDFConverter.exe";  DestDir: "{app}\"; Flags: replacesameversion;
Source: "x32\gsdll32.dll";  DestDir: "{app}\"; 
Source: "x32\msv\msvcp90.dll"; DestDir: "{app}\";
Source: "x32\msv\msvcr90.dll"; DestDir: "{app}\";
Source: "x32\msv\Microsoft.VC90.CRT.manifest"; DestDir: "{app}\";
Source: "License.txt"; DestDir: "{app}\";
Source: "PDFConverter.url"; DestDir: "{app}\";






[Icons]
Name: "{commondesktop}\PDF Converter"; Filename: "{app}\PDFConverter.exe"; WorkingDir: "{app}\";
Name: "{group}\PDF Converter"; Filename: "{app}\PDFConverter.exe"; WorkingDir: "{app}\";
Name: "{group}\Website"; Filename: "{app}\PDFConverter.url"; WorkingDir: "{app}\";
Name: "{group}\Uninstall"; Filename: "{uninstallexe}"



[Registry]

Root: HKLM; Subkey: "SOFTWARE\Microsoft\Windows\CurrentVersion\App Paths\PDFConverter.exe"; ValueType: string; ValueName: "PDFConverter.exe"; ValueData: "{app}\PDFConverter.exe"; Flags: uninsdeletevalue





[Run]
Filename: "{app}\PDFConverter.exe"; Description: Launch PDF Converter; Flags: postinstall nowait skipifsilent runascurrentuser;

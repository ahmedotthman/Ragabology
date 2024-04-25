; Include the MUI (Modern User Interface) package
!include "MUI2.nsh"

; Configuration for custom installer text
!define MUI_WELCOMEPAGE_TITLE "Welcome to AOS Installer"
!define MUI_WELCOMEPAGE_TEXT "AOS is the first of its kind in Egypt, revolutionizing the study of architecture, health and more. Designed to provide you with the knowledge and tools needed to excel in the field, making you a proficient practitioner in no time. We're excited to have you on this journey towards excellence."


!define MUI_FINISHPAGE_TEXT "Installation is complete. Thank you for choosing AOS."

; Installer sections
!insertmacro MUI_PAGE_WELCOME
!insertmacro MUI_PAGE_DIRECTORY
!insertmacro MUI_PAGE_INSTFILES
!insertmacro MUI_PAGE_FINISH

; Modern UI language
!insertmacro MUI_LANGUAGE "English"

; Define installer name and icon
OutFile "E:\All Apps\sae-grade\apps-full\sobeh-desktop\out\AOS.exe"
Icon "E:\All Apps\sae-grade\apps-full\sobeh-desktop\build\installer_icon.ico"
RequestExecutionLevel admin

; Installation directory
InstallDir "$PROGRAMFILES\AOS"

Section "MainSection" SEC01
    SetOutPath $INSTDIR
    File /r "E:\All Apps\sae-grade\apps-full\sobeh-desktop\out\aos-win32-x64\*.*"

    ; Create shortcuts
    CreateDirectory "$SMPROGRAMS\aos"
    CreateShortCut "$SMPROGRAMS\AOS\aos.lnk" "$INSTDIR\aos.exe" "" "E:\All Apps\sae-grade\apps-full\sobeh-desktop\build\app_icon.ico"
    CreateShortCut "$DESKTOP\aos.lnk" "$INSTDIR\aos.exe" "" "E:\All Apps\sae-grade\apps-full\sobeh-desktop\build\app_icon.ico"
SectionEnd

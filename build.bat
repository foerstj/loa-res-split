:: This script is supposed to be executed from your DS installation folder.
:: TankCreator and gaspy are expected to be in sibling dirs.

:: name of resources, case-sensitive
set res_cs=ExpVoices
:: path of DSLOA documents dir (where Bits are)
set doc_dsloa=%USERPROFILE%\Documents\Dungeon Siege LoA
:: path of DS installation
set ds=.
:: path of TankCreator
set tc=..\TankCreator

set copyright=CC-BY-SA 2024
set title=%res_cs%
set author=Johannes Förstner

:: param
set mode=%1
echo %mode%

:: Compile resource files
rmdir /S /Q "%tmp%\Bits"
robocopy "%doc_dsloa%\Bits\sound\voices" "%tmp%\Bits\sound\voices" /E /xf *_ack_* /xf *_select_* /xf *_attack_*
%tc%\RTC.exe -source "%tmp%\Bits" -out "%ds%\DSLOA\%res_cs% - dialog.dsres" -copyright "%copyright%" -title "%title%" -author "%author%"
if %errorlevel% neq 0 pause

rmdir /S /Q "%tmp%\Bits"
robocopy "%doc_dsloa%\Bits\sound\voices" "%tmp%\Bits\sound\voices" /E *_ack_* *_select_* *_attack_*
%tc%\RTC.exe -source "%tmp%\Bits" -out "%ds%\DSLOA\%res_cs% - voiceover.dsres" -copyright "%copyright%" -title "%title%" -author "%author%"
if %errorlevel% neq 0 pause

:: Cleanup
rmdir /S /Q "%tmp%\Bits"

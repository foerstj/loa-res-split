:: This script is supposed to be executed from your DS installation folder.
:: TankCreator and gaspy are expected to be in sibling dirs.

:: path of DSLOA documents dir (where Bits are)
set doc_dsloa=%USERPROFILE%\Documents\Dungeon Siege LoA
:: path of DS installation
set ds=.
:: path of TankCreator
set tc=..\TankCreator

set copyright=CC-BY-SA 2024
set title=Expansion
set author=Johannes Förstner

:: param
set mode=%1
echo %mode%

:: Compile resource files
rmdir /S /Q "%tmp%\Bits"
robocopy "%doc_dsloa%\Bits\art\bitmaps\gui\fonts" "%tmp%\Bits\art\bitmaps\gui\fonts" /E
robocopy "%doc_dsloa%\Bits\art\bitmaps\gui\front_end" "%tmp%\Bits\art\bitmaps\gui\front_end" /E
robocopy "%doc_dsloa%\Bits\art\bitmaps\gui\in_game\menus" "%tmp%\Bits\art\bitmaps\gui\in_game\menus" /E
robocopy "%doc_dsloa%\Bits\art\bitmaps\gui\nis" "%tmp%\Bits\art\bitmaps\gui\nis" /E
robocopy "%doc_dsloa%\Bits\art" "%tmp%\Bits\art" /E *core*.nnk
robocopy "%doc_dsloa%\Bits\config" "%tmp%\Bits\config" /E /xd editor
robocopy "%doc_dsloa%\Bits\ui" "%tmp%\Bits\ui" /E
robocopy "%doc_dsloa%\Bits\world\ai" "%tmp%\Bits\world\ai"
robocopy "%doc_dsloa%\Bits\world\contentdb" "%tmp%\Bits\world\contentdb"
robocopy "%doc_dsloa%\Bits\world\global" "%tmp%\Bits\world\global"
robocopy "%doc_dsloa%\Bits\world\global\formula" "%tmp%\Bits\world\global\formula" /E
robocopy "%doc_dsloa%\Bits\world\global\moods" "%tmp%\Bits\world\global\moods" /E
robocopy "%doc_dsloa%\Bits\world\global\sounds" "%tmp%\Bits\world\global\sounds" /E
%tc%\RTC.exe -source "%tmp%\Bits" -out "%ds%\DSLOA\ExpCore.dsres" -copyright "%copyright%" -title "%title%" -author "%author%"
if %errorlevel% neq 0 pause

rmdir /S /Q "%tmp%\Bits"
robocopy "%doc_dsloa%\Bits\art\animations" "%tmp%\Bits\art\animations" /E
robocopy "%doc_dsloa%\Bits\art\bitmaps\armor" "%tmp%\Bits\art\bitmaps\armor" /E
robocopy "%doc_dsloa%\Bits\art\bitmaps\characters" "%tmp%\Bits\art\bitmaps\characters" /E
robocopy "%doc_dsloa%\Bits\art\bitmaps\gui\in_game\inventory" "%tmp%\Bits\art\bitmaps\gui\in_game\inventory" /E
robocopy "%doc_dsloa%\Bits\art\bitmaps\items" "%tmp%\Bits\art\bitmaps\items" /E
robocopy "%doc_dsloa%\Bits\art\bitmaps\sfx" "%tmp%\Bits\art\bitmaps\sfx" /E
robocopy "%doc_dsloa%\Bits\art\bitmaps\weapons" "%tmp%\Bits\art\bitmaps\weapons" /E
robocopy "%doc_dsloa%\Bits\art\meshes" "%tmp%\Bits\art\meshes" /E
robocopy "%doc_dsloa%\Bits\art" "%tmp%\Bits\art" /E *objects*.nnk
robocopy "%doc_dsloa%\Bits\world\ai\jobs" "%tmp%\Bits\world\ai\jobs" /E
robocopy "%doc_dsloa%\Bits\world\contentdb\components" "%tmp%\Bits\world\contentdb\components" /E
robocopy "%doc_dsloa%\Bits\world\contentdb\templates" "%tmp%\Bits\world\contentdb\templates" /E
robocopy "%doc_dsloa%\Bits\world\global\effects" "%tmp%\Bits\world\global\effects" /E
robocopy "%doc_dsloa%\Bits\world\global\skins" "%tmp%\Bits\world\global\skins" /E
robocopy "%doc_dsloa%\Bits\world\global\skrits" "%tmp%\Bits\world\global\skrits" /E
%tc%\RTC.exe -source "%tmp%\Bits" -out "%ds%\DSLOA\ExpObjects.dsres" -copyright "%copyright%" -title "%title%" -author "%author%"
if %errorlevel% neq 0 pause

rmdir /S /Q "%tmp%\Bits"
robocopy "%doc_dsloa%\Bits\art\terrain" "%tmp%\Bits\art\terrain" /E
robocopy "%doc_dsloa%\Bits\art\bitmaps\terrain" "%tmp%\Bits\art\bitmaps\terrain" /E
robocopy "%doc_dsloa%\Bits\art\bitmaps\decals" "%tmp%\Bits\art\bitmaps\decals" /E
robocopy "%doc_dsloa%\Bits\art" "%tmp%\Bits\art" /E *terrain*.nnk
robocopy "%doc_dsloa%\Bits\world\global\siege_nodes" "%tmp%\Bits\world\global\siege_nodes" /E
%tc%\RTC.exe -source "%tmp%\Bits" -out "%ds%\DSLOA\ExpTerrain.dsres" -copyright "%copyright%" -title "%title%" -author "%author%"
if %errorlevel% neq 0 pause

rmdir /S /Q "%tmp%\Bits"
robocopy "%doc_dsloa%\Bits\sound\effects" "%tmp%\Bits\sound\effects" /E
%tc%\RTC.exe -source "%tmp%\Bits" -out "%ds%\DSLOA\ExpSoundEffects.dsres" -copyright "%copyright%" -title "%title%" -author "%author%"
if %errorlevel% neq 0 pause

rmdir /S /Q "%tmp%\Bits"
robocopy "%doc_dsloa%\Bits\sound\music" "%tmp%\Bits\sound\music" /E
%tc%\RTC.exe -source "%tmp%\Bits" -out "%ds%\DSLOA\ExpMusic.dsres" -copyright "%copyright%" -title "%title%" -author "%author%"
if %errorlevel% neq 0 pause

rmdir /S /Q "%tmp%\Bits"
robocopy "%doc_dsloa%\Bits\movies" "%tmp%\Bits\movies" /E
%tc%\RTC.exe -source "%tmp%\Bits" -out "%ds%\DSLOA\ExpMovies.dsres" -copyright "%copyright%" -title "%title%" -author "%author%"
if %errorlevel% neq 0 pause

rmdir /S /Q "%tmp%\Bits"
robocopy "%doc_dsloa%\Bits\sound\voices" "%tmp%\Bits\sound\voices" /E /xf *_ack_* /xf *_select_* /xf *_attack_*
%tc%\RTC.exe -source "%tmp%\Bits" -out "%ds%\DSLOA\ExpVoices - dialog.dsres" -copyright "%copyright%" -title "%title%" -author "%author%"
if %errorlevel% neq 0 pause

rmdir /S /Q "%tmp%\Bits"
robocopy "%doc_dsloa%\Bits\sound\voices" "%tmp%\Bits\sound\voices" /E *_ack_* *_select_* *_attack_*
%tc%\RTC.exe -source "%tmp%\Bits" -out "%ds%\DSLOA\ExpVoices - voiceover.dsres" -copyright "%copyright%" -title "%title%" -author "%author%"
if %errorlevel% neq 0 pause

rmdir /S /Q "%tmp%\Bits"
robocopy "%doc_dsloa%\Bits\config\editor" "%tmp%\Bits\config\editor" /E
%tc%\RTC.exe -source "%tmp%\Bits" -out "%ds%\DSLOA\ExpSiegeEditorExtras.dsres" -copyright "%copyright%" -title "%title%" -author "%author%"
if %errorlevel% neq 0 pause

:: Cleanup
rmdir /S /Q "%tmp%\Bits"

:: This script is supposed to be executed from your DS installation folder.

:: name of resources, case-sensitive
set res_cs=ExpVoices
:: path of DS installation
set ds=.

:: Cleanup resources so as not to confuse Siege Editor
del "%ds%\DSLOA\%res_cs% - dialog.dsres"
del "%ds%\DSLOA\%res_cs% - voiceover.dsres"

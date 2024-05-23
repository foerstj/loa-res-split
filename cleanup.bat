:: This script is supposed to be executed from your DS installation folder.

:: path of DS installation
set ds=.

:: Cleanup resources so as not to confuse Siege Editor
del "%ds%\DSLOA\Exp*.dsres"

@echo off
:start
MODE 90,30
md c:\ThinkingPaint\BarryBuddy2\com\vbs
md c:\ThinkingPaint\BarryBuddy2\data
md c:\ThinkingPaint\BarryBuddy2\usr

copy barrybuddy2.cmd c:\thinkingpaint\barrybuddy2\com\barrybuddy2.cmd

echo Barry Buddy Version 2.1.1   %TIME% >> c:\thinkingpaint\barrybuddy2\usr\log.txt
echo Barry Buddy Version 2.1.1 released February 6, 2021 > c:\thinkingpaint\barrybuddy2\info.txt
call >> c:\thinkingpaint\barrybuddy2\usr\notes.txt

echo I see you're exploring Barry Buddy files, have fun! Email suggestions to suggestions@thinkingpaint.com > c:\thinkingpaint\barrybuddy2\readme.txt

echo x=MsgBox ("I know, an actual popup, now this is inovation.", 0+64, "Cool, Right?") > c:\thinkingpaint\barrybuddy2\com\vbs\msgbox.vbs
echo Dim message, sapi: message=InputBox("What do you want me to say?","Speak to Me"): Set sapi=CreateObject("sapi.spvoice"): sapi.Speak message > c:\thinkingpaint\barrybuddy2\com\vbs\tts.vbs


color 09
:home
for /f "Delims=" %%a in (c:\thinkingpaint\barrybuddy2\usr\color.dll) do (
set COLOR=%%a
)
color %COLOR%
title Thinking Paint Barry Buddy
cls
echo BarryBuddy 2 by Thinking Paint
echo Instructions:
echo When prompted, type the number under the activity as shown below
echo ----------------------------------------------------------------
echo hi its a me
echo "       .-.         .--''-.
echo "      .'   '.     /'       `.
echo "      '.     '. ,'          |
echo "   o    '.o   ,'        _.-'
echo "    \.--./'. /.:. :._:.'
echo "   .'    '._-': ': ': ': ':
echo "  :(#) (#) :  ': ': ': ': ':>
echo "   ' ____ .'_.:' :' :' :' :'
echo "    '\__/'/ | | :' :' :'
echo "          \  \ \
echo "          '  ' '
echo +---------------------------------------------------------------------+
echo [                              Activities                             ]
echo +---------------------------------------------------------------------+
echo [                                                                     ]
echo [  Thinking Paint \ Settings \ Calculator \ Fun Stuff \ Games \ Notes ]
echo [                                                                     ]
echo +---------------------------------------------------------------------+
echo [        1             2           3            4         5       6   ]
echo +---------------------------------------------------------------------+
echo -
set /p ACTIVITY=Which activity?
if %ACTIVITY%==1 start https://www.thinkingpaint.com
if %ACTIVITY%==2 goto settings
if %ACTIVITY%==3 goto calc
if %ACTIVITY%==4 goto funstuff
if %ACTIVITY%==5 goto games
if %ACTIVITY%==6 start c:\thinkingpaint\barrybuddy2\usr\notes.txt

if %ACTIVITY%==log start c:\thinkingpaint\barrybuddy2\usr\log.txt
if %ACTIVITY%==reset RD /s c:\thinkingpaint
if %ACTIVITY%==info start c:\thinkingpaint\barrybuddy2\info.txt
if %ACTIVITY%==subscribe goto subscribe
goto start


:settings
cls
title Barry Buddy Settings
echo Welcome to Barry Buddy settings!
echo When prompted, type the name of the setting as shown below
echo ----------------------------------------------------------
echo Type h to return to the Barry Buddy home screen
echo -
echo "       .-.         .--''-.
echo "      .'   '.     /'       `.
echo "      '.     '. ,'          |
echo "   o    '.o   ,'        _.-'
echo "    \.--./'. /.:. :._:.'
echo "   .'    '._-': ': ': ': ':
echo "  :(#) (#) :  ': ': ': ': ':>
echo "   ' ____ .'_.:' :' :' :' :'
echo "    '\__/'/ | | :' :' :'
echo "          \  \ \
echo "          '  ' '
echo +-----------------------------------------------------+
echo [                       Settings                      ]
echo +-----------------------------------------------------+
echo [                                                     ]
echo [  Info \ Change Colors \ Download Latest \ Uninstall ]
echo [                                                     ]
echo +-----------------------------------------------------+
echo [    1          2                 3             4     ]
echo +-----------------------------------------------------+
echo [ Report Bug \ Suggest Feature \ Support \ Advanced   ]
echo +-----------------------------------------------------+
echo [      5              6             7         8       ]
echo +-----------------------------------------------------+
echo -
set /p SETTING=Which item?
if %SETTING%==1 start c:\thinkingpaint\barrybuddy2\info.txt
if %SETTING%==2 goto color
if %SETTING%==3 start https://bbdl.go.thinkingpaint.com
if %SETTING%==4 goto uninst
if %SETTING%==5 goto bugreport
if %SETTING%==6 goto suggest
if %SETTING%==7 goto support
if %SETTING%==8 goto advanced
if %SETTING%==h goto home
timeout 1
goto settings


:calc
cls
title Barry Buddy Calculator
echo sorry this app is really dumb and can only do whole numbers
echo ------------------------------------------------------------
echo type h to return to Barry Buddy home
echo -
set /p MATH=Math Problem?
if %MATH%==h goto home
set /a RESULT=%MATH%
echo -
echo -                         %RESULT%
echo -
echo press any key to enter another equation or return home
pause>nul
goto calc


:games
cls
title Barry Buddy Games
echo Welcome to Barry Buddy Games!
echo When prompted, type the name of the setting as shown below
echo ----------------------------------------------------------
echo Type h to return to the Barry Buddy home screen
echo -
echo "       .-.         .--''-.
echo "      .'   '.     /'       `.
echo "      '.     '. ,'          |
echo "   o    '.o   ,'        _.-'
echo "    \.--./'. /.:. :._:.'
echo "   .'    '._-': ': ': ': ':
echo "  :(#) (#) :  ': ': ': ': ':>
echo "   ' ____ .'_.:' :' :' :' :'
echo "    '\__/'/ | | :' :' :'
echo "          \  \ \
echo "          '  ' '
echo +-----------------+
echo [      Games      ]
echo +-----------------+
echo [                 ]
echo [  Guessing Game  ]
echo [                 ]
echo +-----------------+
echo [        1        ]
echo +-----------------+
echo -
set /p GAME=Which game?
if %GAME%==1 goto guess
if %GAME%==h goto home
goto home

:guess
cls
title Barry Buddy Guessing Game
set /a guessnum=0
set /a answer=%RANDOM%
set variable1=subscribe
echo -------------------------------------------------
echo Welcome to the Guessing Game! 
echo. 
echo Try and Guess my Number! 
echo -------------------------------------------------
echo. 
:topguess
echo. 
set /p guess=
echo. 
if %guess% GTR %answer% ECHO Lower! 
if %guess% LSS %answer% ECHO Higher! 
if %guess%==%answer% GOTO EQUALguess
set /a guessnum=%guessnum% +1
if %guess%==%variable1% ECHO Found the backdoor hey?, the answer is: %answer%
goto topguess
:equalguess
echo Congratulations, You guessed right!!! 
echo. 
echo It took you %guessnum% guesses. 
echo. 
echo Press any key to return home
pause>nul
goto home



:color
cls
echo Choose a color scheme
echo Will revert to default apon closing of Barry Buddy
echo -
echo 1) White on black background 
echo 2) Black on turquoise background
echo 3) Green on black background
echo 4) Blue  on Black Background (Default)
echo ---------------------
set /p COLOR=Color Number?
if %COLOR%==1 echo 0f > c:\thinkingpaint\barrybuddy2\usr\color.dll
if %COLOR%==2 echo b0 > c:\thinkingpaint\barrybuddy2\usr\color.dll
if %COLOR%==3 echo 0a > c:\thinkingpaint\barrybuddy2\usr\color.dll
if %COLOR%==4 echo 09 > c:\thinkingpaint\barrybuddy2\usr\color.dll
goto start

:uninst
cls
echo IMPORTANT: Confirm=y Cancel=n After confirming the uninstall, ignore any further prompts and close Barry Buddy
echo -
RD /s c:\thinkingpaint\barrybuddy2
del barrybuddy2.cmd
exit

:bugreport
cls
echo If you have found a bug, glitch, or incorrectly working part,
echo please email suggestions@thinkingpaint.com
echo -
echo Press any key to return
pause>nul
goto start

:suggest
cls
echo If you have a suggestion for a new feature or a change to Barry Buddy
echo please email suggestions@thinkingpaint.com
echo -
echo Press any key to return
pause>nul
goto start

:support
cls
echo If you have a problem using Barry Buddy or a question about it,
echo please email support@thinkingpaint.com
echo -
echo Press any key to return
pause>nul
goto start

:advanced
cls
echo Choose an option
echo 1] Explore Barry Buddy files
echo 2] Return Home
set /p OPT0=?
if %OPT0%==1 start c:\thinkingpaint\barrybuddy2
if %OPT0%==2 goto start
goto advanced




:funstuff
cls
Title Barry Buddy Fun Stuff
echo Welcome to Barry Buddy Fun Stuff!
echo When prompted, type the name of the setting as shown below
echo ----------------------------------------------------------
echo Type h to return to the Barry Buddy home screen
echo -
echo "       .-.         .--''-.
echo "      .'   '.     /'       `.
echo "      '.     '. ,'          |
echo "   o    '.o   ,'        _.-'
echo "    \.--./'. /.:. :._:.'
echo "   .'    '._-': ': ': ': ':
echo "  :(#) (#) :  ': ': ': ': ':>
echo "   ' ____ .'_.:' :' :' :' :'
echo "    '\__/'/ | | :' :' :'
echo "          \  \ \
echo "          '  ' '
echo +------------------------------------------------------------------------------+
echo [                                    Stuff                                     ]
echo +------------------------------------------------------------------------------+
echo [                                                                              ]
echo [  Password Generator \ Matrix \ Un-Fun Stuff \ A real Message \ Text 2 Speech ]
echo [                                                                              ]
echo +------------------------------------------------------------------------------+
echo [          1              2            3               4               5       ]
echo +------------------------------------------------------------------------------+
echo -
set /p FUNSTUFF=Which setting?
if %FUNSTUFF%==1 goto passgen
if %FUNSTUFF%==2 goto matrix
if %FUNSTUFF%==h goto home
if %FUNSTUFF%==3 goto unfunstuff
if %FUNSTUFF%==4 start c:\thinkingpaint\barrybuddy2\com\vbs\msgbox.vbs
if %FUNSTUFF%==5 start c:\thinkingpaint\barrybuddy2\com\vbs\tts.vbs
goto funstuff

:passgen
cls
:Start2pass
cls
goto Startpass
:Startpass
title Barry Buddy Password Generator
echo I will make you a new password. 
echo Please write the password down somewhere in case you forget it. 
echo ----------------------------------------------------------------
echo 1) 1 Random Password
echo 2) 5 Random Passwords
echo 3) 10 Random Passwords
echo Input your choice
set input=
set /p input= Choice: 
if %input%==1 goto 1pass if NOT goto Start2pass
if %input%==2 goto 5pass if NOT goto Start2pass
if %input%==3 goto 10pass if NOT goto Start2pass
goto home
:1pass
cls
echo Your password is %random%
echo Now choose what you want to do. 
echo 1) Go back to the beginning
echo 2) Exit
set input=
set /p input= Choice: 
if %input%==1 goto Start2pass if NOT goto Start 2
if %input%==2 goto home if NOT goto Start 2
goto home
:5pass
cls
echo Your 5 passwords are %random%, %random%, %random%, %random%, %random%.
echo Now choose what you want to do. 
echo 1) Go back to the beginning
echo 2) Exit
set input=
set /p input= Choice: 
if %input%==1 goto Start2pass if NOT goto Start 2
if %input%==2 goto home if NOT goto Start 2
goto home
:10pass
cls
echo Your 10 Passwords are %random%, %random%, %random%, %random%, %random%, %random%, %random%, %random%, %random%, %random%
echo Now choose what you want to do. 
echo 1) Go back to the beginning
echo 2) Exit
set input=
set /p input= Choice: 
if %input%==1 goto Start2pass if NOT goto Start 2
if %input%==2 goto home if NOT goto Start 2
goto home

:matrix
cls
echo 1 1 1 0 1 0 0 0 1 1 1 1 0 0 0 1 1 0 0 1 0 0 0 1 1 0 1 0 1 0 0 0 1 1 1 1
echo 1 1 0 1 1 1 0 0 0 1 0 1 a f h 0 0 0 1 0 1 1 0 0 1 1 1 0 0 1 0 1 0 0 1 1 0
echo 1 0 0 1 1 0 9 8 1 2 0 1 9 9 2 1 1 1 0 0 1 0 1 1 1 0 1 1 0 1 0 0 0 1 0 1 1
echo 0 1 0 0 0 1 0 0 0 1 0 0 0 1 0 1 0 0 1 0 1 0 1 1 0 1 0 0 0 01 0 1 0 0 1 0
echo 1 0 1 1 1 0 1 1 0 9 1 1 2 1 1 0 9 1 0 5 7 7 8 7 8 1 3 2 1 2 1 2 3 2 1 3 4
echo 1 1 1 0 1 0 0 1 0 0 0 1 1 1 0 0 1 1 1 4 1 2 1 1 2 0 1 0 1 2 2 1 0 1 1 0 1
echo 1 1 1 0 1 0 0 0 1 1 1 1 0 0 0 1 1 0 0 1 0 0 0 1 1 0 1 0 1 0 0 0 1 1 1 1
echo 1 1 0 1 1 1 0 0 0 1 0 1 a f h 0 0 0 1 0 1 1 0 0 1 1 1 0 0 1 0 1 0 0 1 1 0
echo 1 0 0 1 1 0 9 8 1 2 0 1 9 9 2 1 1 1 0 0 1 0 1 1 1 0 1 1 0 1 0 0 0 1 0 1 1
echo 0 1 0 0 0 1 0 0 0 1 0 0 0 1 0 1 0 0 1 0 1 0 1 1 0 1 0 0 0 01 0 1 0 0 1 0
echo 1 0 1 1 1 0 1 1 0 9 1 1 2 1 1 0 9 1 0 5 7 7 8 7 8 1 3 2 1 2 1 2 3 2 1 3 4
echo 1 1 1 0 1 0 0 1 0 0 0 1 1 1 0 0 1 1 1 4 1 2 1 1 2 0 1 0 1 2 2 1 0 1 1 0 1
echo 1 1 1 0 1 0 0 0 1 1 1 1 0 0 0 1 1 0 0 1 0 0 0 1 1 0 1 0 1 0 0 0 1 1 1 1
echo 1 1 0 1 1 1 0 0 0 1 0 1 a f h 0 0 0 1 0 1 1 0 0 1 1 1 0 0 1 0 1 0 0 1 1 0
echo 1 0 0 1 1 0 9 8 1 2 0 1 9 9 2 1 1 1 0 0 1 0 1 1 1 0 1 1 0 1 0 0 0 1 0 1 1
echo 0 1 0 0 0 1 0 0 0 1 0 0 0 1 0 1 0 0 1 0 1 0 1 1 0 1 0 0 0 01 0 1 0 0 1 0
echo Press any key to exit
pause>nul
goto home

:subscribe
cls
echo Yes, please
pause>nul
goto home

:unfunstuff
cls
Title Barry Buddy       Un-Fun Stuff
echo Welcome to Barry Buddy Un-Fun Stuff!
echo When prompted, type the number of the thing as shown below
echo ----------------------------------------------------------
echo Type h to return to the Barry Buddy home screen
echo -
echo "       .-.         .--''-.
echo "      .'   '.     /'       `.
echo "      '.     '. ,'          |
echo "   o    '.o   ,'        _.-'
echo "    \.--./'. /.:. :._:.'
echo "   .'    '._-': ': ': ': ':
echo "  :(#) (#) :  ': ': ': ': ':>
echo "   ' ____ .'_.:' :' :' :' :'
echo "    '\__/'/ | | :' :' :'
echo "          \  \ \
echo "          '  ' '
echo +-------------------+
echo [       Stuff       ]
echo +-------------------+
echo [                   ]
echo [  Computer Freeze  ]
echo [                   ]
echo +-------------------+
echo [         1         ]
echo +-------------------+
echo -
set /p UNFUNSTUFF=Which setting?
if %UNFUNSTUFF%==h goto home
if %UNFUNSTUFF%==1 goto freeze
goto unfunstuff


exit
:freeze
cls
echo WARNING!!!!! THIS WILL FREEZE YOUR COMPUTER; close this window to cancel
echo The only way to fix it is to force restart your computer! Are you sure?
pause
:freezestart
start notepad
goto freezestart


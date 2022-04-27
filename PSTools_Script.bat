@ECHO off
REM - Executar como Administrador
REM     if "%~s0"=="%~s1" ( cd %~sp1 & shift ) else (
REM        echo CreateObject^("Shell.Application"^).ShellExecute "%~s0","%~0 %*","","runas",1 >"%tmp%%~n0.vbs" & "%tmp%%~n0.vbs" & del /q "%tmp%%~n0.vbs" & goto :eof
REM )
REM Cliente
	cls
	echo.
	echo # - - - - - - - - - - - - - - - - - - - - - - - - - #
	echo #            NOME DO COMPUTADOR                     #
	echo # - - - - - - - - - - - - - - - - - - - - - - - - - #
	echo.
		set /p empresa="COMPUTADOR: " 
		echo %computador%
		
	cls
	echo.
	echo # - - - - - - - - - - - - - - - - - - - - - - - - - #
	echo #            COMANDO                                #
	echo # - - - - - - - - - - - - - - - - - - - - - - - - - #
	echo.
		set /p empresa="COMANDO: " 
		echo %comando%
	cls
	echo.
	echo # - - - - - - - - - - - - - - - - - - - - - - - - - #
	echo #                    USUARIO                        #
	echo #           EXEMPLO: TECH\Administrator             #
	echo # - - - - - - - - - - - - - - - - - - - - - - - - - #
	echo.
		set /p usuario="USUARIO: " 
		echo %usuario%
	echo # - - - - - - - - - - - - - - - - - - - - - - - - - #
	echo #                    SENHA                          #
	echo # - - - - - - - - - - - - - - - - - - - - - - - - - #
	echo.
		set /p senha="SENHA: " 
		echo %senha%
REM Instalar Fusion
	cls
	echo.
	echo # - - - - - - - - - - - - - - - - - - - - - - - - - #
	echo #            COMANDO INICIADO                       #
	echo # - - - - - - - - - - - - - - - - - - - - - - - - - #
	echo.   
       psexec \\%computador% -accepteula -i -s -u %usuario% -p %senha% %comando%
		pause
REM Instalar Fusion
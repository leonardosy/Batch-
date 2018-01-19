@echo off
echo ================================================
echo                   CORRECAO SAP
echo ================================================

:menu

echo - 1. Erro 88
echo - 2. Erro SNC_LIB
echo - 3. EXIT

set /p opcao= 
if %opcao% equ 1 goto opcao1
if %opcao% equ 2 goto opcao2
if %opcao% equ 3 goto opcao3

pause

:opcao1
echo ================================================
echo               CORRECAO SAP Erro 88
echo ================================================

REM start Downloads

pause
goto opcao3

:opcao2
REM @echo on
echo ================================================
echo               CORRECAO SAP SNC_LIB
echo ================================================

REM Copia os Arquivos (Inseri caminho na rede)
copy D:\scud-leonardo\Desktop\bat\1.txt C:\Windows\System32
REM copy \\sjkfs13\Backhelp\
CACLS 1.txt /E /G "scud-teste":F
copy D:\scud-leonardo\Desktop\bat\1.txt C:\Windows\SysWOW64
cd ..
cd SysWOW64
CACLS 1.txt /E /G "scud-teste":F

REM Define Variavel do Sistema
SETX SNC_LIB "C:\Windows\System32" /M

pause
goto opcao3

REM C:																							
REM C:
REM cd Windows
REM cd System32a
REM cd scud-leonardo
REM cd Desktop
REM cd teste
REM CACLS 1.txt /E /G "scud-teste":F
REM CACLS 2.txt /E /G "scud-teste":F
REM CACLS 3.txt /E /G "scud-teste":F
REM SET /P input=
REM echo SAIDA: %input%


:opcao3
cls
exit

pause
goto menu

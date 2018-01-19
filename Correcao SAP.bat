@echo off
echo ================================================
echo                   CORRECAO SAP
echo ================================================
pause

REM @echo on

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
pause

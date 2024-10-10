@echo off
setlocal

REM Define variáveis comuns
set PGPASSWORD=your_password
set DB_HOST=localhost
set DB_PORT=38561
set DB_USER=postgres
set DB_NAME=vr
set BACKUP_DIR=C:\bkp
set LOG_FILE=C:\log.log

REM Função para exportar o banco de dados
:export_db
echo Iniciando exportação do banco de dados...
pg_dump.exe -h %DB_HOST% -p %DB_PORT% -U %DB_USER% -v -Fc -f %BACKUP_DIR%\%DB_NAME%_backup.backup %DB_NAME%
echo Exportação concluída com sucesso! >> %LOG_FILE%
echo Exportação concluída com sucesso! Veja os detalhes no arquivo de log: %LOG_FILE%
goto end

REM Função para importar o banco de dados
:import_db
echo Iniciando importação do banco de dados...
pg_restore.exe -h %DB_HOST% -p %DB_PORT% -U %DB_USER% -v -e -d %DB_NAME% -Fc %BACKUP_DIR%\%DB_NAME%_backup.backup >> %LOG_FILE%
echo Importação concluída com sucesso! Veja os detalhes no arquivo de log: %LOG_FILE%
goto end

REM Menu de seleção
:menu
echo ===============================
echo      FERRAMENTA DE BACKUP
echo ===============================
echo [1] Exportar Backup do Banco
echo [2] Importar Backup no Banco
echo [0] Sair
echo ===============================
set /p choice="Escolha uma opcao: "

if "%choice%"=="1" goto export_db
if "%choice%"=="2" goto import_db
if "%choice%"=="0" goto end

REM Se a opção for inválida
echo Opção inválida. Tente novamente.
goto menu

:end
echo Obrigado por usar a ferramenta de backup!
pause
exit /b

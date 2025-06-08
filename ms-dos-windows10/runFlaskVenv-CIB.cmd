@REM
@REM   FLASK PROJECT VENV LAUNCH :
@REM
@REM   Auth(s): Matteo GEROSA
@REM   Vers. 2025-02-17
@REM

@REM --------------------------------------------------------------------------

@cls
@echo.
@echo Lancio Flask in Virtual Environment (VENV):
@echo.
@pause
@echo.

@call setenv-API.cmd
@REM @call setenv-dev-DB.cmd

@cd %FLASK_PRJ_HOME%
@echo Working-directory corrente:
@echo %CD%
@echo.

@REM --------------------------------------------------------------------------

@echo.
@echo Lancio ed entrata in VENV - Progetto "%PRJ_NAME%" (%PRJ_NICKNAME%):
@echo.
@REM pause
@REM echo.
@call %VENV_CMD_HOME%\activate

@REM --------------------------------------------------------------------------

@echo.
@echo Lancio FLASK - Progetto "%PRJ_NAME%" (%PRJ_NICKNAME%):
@echo.
@REM pause
@REM echo.
@flask run --port=%FLASK_PORT%
@REM ALSO: python -m flask run --port=%FLASK_PORT%

@echo.
@pause

@REM ==========================================================================

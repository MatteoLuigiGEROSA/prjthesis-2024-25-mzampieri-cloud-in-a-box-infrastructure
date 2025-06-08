@REM
@REM   FLASK PROJECT VENV PREPARATION :
@REM
@REM   Auth(s): Matteo GEROSA
@REM   Vers. 2025-03-15
@REM

@REM --------------------------------------------------------------------------

@cls
@echo.
@echo Preparazione Python Virtual Environment (VENV) per il nuovo Progetto Flask:
@echo.
@pause
@echo.

@call setenv-CIB.cmd

@cd %FLASK_PRJ_HOME%
@echo Working-directory corrente:
@echo %CD%
@echo.

@REM --------------------------------------------------------------------------

@echo.
@echo Costruzione Python Virtual Environment (VENV) per il nuovo Progetto:
@echo (PLS attendere - questo step richiede una decina di secondi)
@echo.
@REM pause
@REM echo.
@python -m venv %VENV_HOME%\%PRJ_NAME%

@REM --------------------------------------------------------------------------

@echo.
@echo Lancio ed entrata in VENV appena preparato:
@echo.
@REM pause
@REM echo.
@call %VENV_CMD_HOME%\activate

@REM --------------------------------------------------------------------------

@echo.
@echo Installazione FLASK in venv appena preparato per il nuovo Progetto:
@echo.
@REM pause
@REM echo.
@python.exe -m pip install --upgrade pip
@python -m pip install flask firebase-admin python-dotenv flask-swagger-ui flasgger requests flask_restful

@REM --------------------------------------------------------------------------

@echo.
@echo Lancio FLASK per testing installazione per il nuovo Progetto:
@echo.
@REM pause
@REM echo.
@flask run --port=%FLASK_PORT%
@REM ALSO: python -m flask run --port=%FLASK_PORT%

@REM ==========================================================================

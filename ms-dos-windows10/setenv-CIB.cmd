@REM
@REM   FLASK DEVELOPMENT ENVIRONMENT SETENV :
@REM

@REM === <README> =============================================================
@REM
@REM  La Variabile d'Ambiente "USER_HOME" va personalizzata inserendovi il
@REM  nome dell'Utente di Windows (Windows User) con il quale si fa LOGIN:
@REM
@REM  "USER_HOME" Environment Variable (env-var, or var-env) is to be
@REM  personalized with the name of the WIndows User by which you log in:
@REM
@set USER_HOME=C:\Users\devmgr
@REM
@REM --------------------------------------------------------------------------
@REM
@REM  Le due Variabili d'Ambiente "PRJ_NAME" e "PRJ_NICKNAME" non vanno toccate
@REM  nel contesto del Project Work dells Scuola - se invece vogliamo lavorare su
@REM  un nuovo progetto avente nome - ad esempio - "MyWebSite":  allora dovrai
@REM  inserire "MyWebSite" in "PRJ_NAME" ed inventare un nickname per "MyWebSite"
@REM  come per esempio: "MWS" ...
@REM
@set PRJ_NAME=CloudInABox
@set PRJ_NICKNAME=CIB
@REM
@REM === </README> ============================================================


@REM ==========================================================================
@REM === DA QUESTO PUNTO IN POI NON VI E' PIU' NULLA DA MODIFICARE ============
@REM ==========================================================================
@REM === FROM HERE ONWARDS NOTHING MORE NEEDS TO BE MODIFIED ==================
@REM ==========================================================================


@echo.
@echo SETENV Ambiente di Sviluppo - Progetto "%PRJ_NAME%" (%PRJ_NICKNAME%):
@echo.
@pause
@echo.

@REM --------------------------------------------------------------------------

@set VENV_HOME=%USER_HOME%\.virtualenvs
@set VENV_CMD_HOME=%VENV_HOME%\%PRJ_NAME%\Scripts
@set FLASK_PRJ_HOME=%USER_HOME%\Documents\flask\projects\%PRJ_NAME%

@REM --------------------------------------------------------------------------

@REM Location of module containing your application (NB: do not add spaces around equals sign!!!)
@set FLASK_APP=app_controller.py

@REM The following enables development features like debugging and hot-deployment:
@set FLASK_ENV=development

@REM Listening-port for this Flask web-server instance:
@set FLASK_PORT=5010

@REM --------------------------------------------------------------------------

@echo PRJ_NAME ......... %PRJ_NAME%
@echo PRJ_NICKNAME ..... %PRJ_NICKNAME%
@echo.
@echo USER_HOME ........ %USER_HOME%
@echo VENV_HOME ........ %VENV_HOME%
@echo VENV_CMD_HOME .... %VENV_CMD_HOME%
@echo FLASK_PRJ_HOME ... %FLASK_PRJ_HOME%
@echo FLASK_APP ........ %FLASK_APP%
@echo FLASK_ENV ........ %FLASK_ENV%
@echo FLASK_PORT ....... %FLASK_PORT%
@echo.

@pause
@echo.

@REM ==========================================================================

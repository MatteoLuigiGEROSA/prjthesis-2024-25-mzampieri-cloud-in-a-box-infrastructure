#!/bin/bash
# =============================================================================
# FLASK DEVELOPMENT ENVIRONMENT SETENV - Bash version for Kubuntu 24.04
# Project: CloudInABox (CIB)
# =============================================================================

# === <README> ===============================================================
# La variabile "USER_HOME" va personalizzata con la tua home directory Linux.
# Esempio: se il tuo utente si chiama "devmgr", allora sarà /home/devmgr
USER_HOME="/home/cldmgr"  # <-- Modifica secondo il tuo nome utente reale
# ============================================================================

# Queste due variabili NON VANNO MODIFICATE nel contesto del Project Work
PRJ_NAME="CloudInABox"
PRJ_NICKNAME="CIB"

# =============================================================================
# === DA QUI IN POI NON MODIFICARE NULLA =====================================
# =============================================================================

echo
echo "SETENV Ambiente di Sviluppo - Progetto \"$PRJ_NAME\" ($PRJ_NICKNAME):"
echo
read -p "Premi INVIO per continuare..."

# ============================================================================
# Impostazione delle variabili d'ambiente

VENV_HOME="$USER_HOME/.virtualenvs"
VENV_CMD_HOME="$VENV_HOME/$PRJ_NAME/bin"
FLASK_PRJ_HOME="$USER_HOME/Documents/flask/projects/$PRJ_NAME"

export FLASK_APP="app_controller.py"     # Main Flask app entry point
export FLASK_ENV="development"           # Abilita debug e hot-reload
export FLASK_PORT=5010                   # Porta d'ascolto per Flask

# ============================================================================
# Stampa riepilogo variabili

echo "PRJ_NAME ......... $PRJ_NAME"
echo "PRJ_NICKNAME ..... $PRJ_NICKNAME"
echo
echo "USER_HOME ........ $USER_HOME"
echo "VENV_HOME ........ $VENV_HOME"
echo "VENV_CMD_HOME .... $VENV_CMD_HOME"
echo "FLASK_PRJ_HOME ... $FLASK_PRJ_HOME"
echo "FLASK_APP ........ $FLASK_APP"
echo "FLASK_ENV ........ $FLASK_ENV"
echo "FLASK_PORT ....... $FLASK_PORT"
echo

read -p "Premi INVIO per terminare..."
echo
# ============================================================================

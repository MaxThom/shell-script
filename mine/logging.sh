#!/bin/bash
VERBOSE=true
PID=$$
HOST=$(hostname)
PROGRAM_NAME=$0

logger "Message"
# -p facility.severity
logger -p local0.info "Message"
# -t tag
logger -t myscript -p local0.info "Message myscript"
# -s display on screen
logger -s -t myscript -p local0.info "Message myscript"

logit () {
    local LOG_LEVEL=$1
    shift
    MSG=$@
    TIMESTAMP=$(date +"%Y-%m-%d %T")
    if [ $LOG_LEVEL = 'ERROR' ] || $VERBOSE
    then
        echo "${TIMESTAMP} ${HOST} ${PROGRAM_NAME} [${PID}]: ${LOG_LEVEL} ${MSG}"
    fi
}

logit INFO "Processing data."
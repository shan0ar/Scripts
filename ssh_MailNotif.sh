#!/bin/bash

source="alert@TSN_bot.com"
destination="thomas.stephan@travail.com"
object="TSNdeb - SSH connection"
body="Nouvelle connexion SSH maintenant"

if [ -n "${PAM_TYPE}" ] && [ "${PAM_TYPE}" = "open_session" ]; then
    echo "${body}" | /usr/bin/mail -r "${source}" -s "${object}" "${destination}" -a "Content-Type: text/html"
fi
exit 0

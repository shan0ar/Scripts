#!/bin/bash

expediteur="alert@TSN_bot.axians.com"
destinataire="thomas.stephan@axians.com"
objet="TSNdeb - SSH connection"
body="Nouvelle connexion SSH maintenant"

if [ -n "${PAM_TYPE}" ] && [ "${PAM_TYPE}" = "open_session" ]; then
    echo "${body}" | /usr/bin/mail -r "${expediteur}" -s "${objet}" "${destinataire}" -a "Content-Type: text/html"
fi
exit 0

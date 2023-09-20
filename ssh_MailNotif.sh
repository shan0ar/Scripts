#!/bin/bash

source="alert@TSN_bot.com"
destination="thomas.stephan@travail.com"
object="TSNdeb - SSH connection"
body="Nouvelle connexion SSH maintenant"

if [ -n "${PAM_TYPE}" ] && [ "${PAM_TYPE}" = "open_session" ]; then
    echo "${body}" | /usr/bin/mail -r "${source}" -s "${object}" "${destination}" -a "Content-Type: text/html"
fi
exit 0


#Vérifier que mailutils et postfix, pour tester que l'envoi de mail à lui seul fonctionne, commenter la ligne if et fi puis executer le script. Ensuite, visionner /var/log/mail.log des informations intéressantes peuvent s'y trouver si le mail ne s'envoi pas.

NB: certains scripts peuvent ne pas fonctionner à cause d'un éventuel manque d'authentification (via oauth2/keycloak)
    en invoquant des URLs de type "private"
car ça ne fonctionne qu'en dev avec set WITHOUT_AUTH=yes
------------------------
Pour contourner cela (en mode prod SANS WITHOUT_AUTH=yes), il faudrait :
  - se connecter sur la mini console du backend (ex: https://www.d-defrance.fr/tp/tp-api-html/index.html)
  - se logger en tant qu'admin (d2f, …)
  - lancer le point d'entrée en "reinit" et éventuellement "refresh"

===> mais quelques bugs à gérer pour cela ...
------
dans le répertoire /base/local-git-repositories , des clones des référentiels GIT suivants:

https://github.com/didier-mycontrib/ddc-api
https://github.com/didier-mycontrib/qcm-api
https://github.com/didier-mycontrib/user-api
https://github.com/didier-mycontrib/ddc-app
https://github.com/didier-mycontrib/qcm-app

première initialisation:
/base/web-script/local_git_repos/init-local-git-reporitories.sh
et sh /base/web-script/init-frontends-content-link-on-vps.sh
ou bien sh /base/web-script/local_git_repos/copy-frontends-content-if-no-symlink.sh sur environnement vagrant

futures actualisations:
/base/web-script/local_git_repos/refresh-local-git-reporitories.sh  lancant plein de git pull
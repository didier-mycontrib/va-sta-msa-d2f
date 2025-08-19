.mongo_secret_pwd file of this directory
should not be in git repository (should be in .gitignore)
----
this file should contain the root password of mongoDB for production
it may be create via echo xyz > .mongo_secret_pwd
and chmod ??? .mongo_secret_pwd
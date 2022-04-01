echo "restarting docker-compose up in background ..." 
nohup docker-compose up --remove-orphans > logfile.log 2>&1 &
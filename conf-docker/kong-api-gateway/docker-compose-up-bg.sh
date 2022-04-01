echo "restarting docker-compose up in background ..." 
nohup docker-compose --remove-orphans up > logfile.log 2>&1 &
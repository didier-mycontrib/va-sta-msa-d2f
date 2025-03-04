echo "restarting docker-compose up in background ..." 
#nohup docker-compose up --build > logfile.log 2>&1 &
nohup docker-compose up  > logfile.log 2>&1 &
cd ~/call_for_code

echo "stopping containers..."

docker-compose down
    
echo "pulling from master..."

git pull git@github.com:angadsharma1016/call_for_code.git master

echo "pulled successfully..."

echo "rebuilding containers"

docker-compose up --build -d && echo "containers started"
#docker compose up -d
#docker cp ./db/business.csv test_db:/data
docker build -f ../db/Dockerfile ./db

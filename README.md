# phoenix framework development environment

posgresql container up as daemon

    docker-compose up -d db

phoenix container run and expose port 4000

    docker-compose run --service-ports phoenix

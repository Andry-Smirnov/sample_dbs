.PHONY: postgres mysql mssql graphql sqlite all
.DEFAULT_GOAL := postgres

REPO=tjcim/sample_dbs

all: postgres mysql mssql graphql sqlite

postgres:
	@echo "Building postgres"
	docker build -f postgresql/Dockerfile -t ${REPO}:postgres ./postgresql
	docker push ${REPO}:postgres

mysql:
	@echo "Building mysql"
	docker build -f mysql/Dockerfile -t ${REPO}:mysql ./mysql
	docker push ${REPO}:mysql

mssql:
	@echo "Building mssql"
	docker build -f mssql/Dockerfile -t ${REPO}:mssql ./mssql
	docker push ${REPO}:mssql

graphql:
	@echo "Building graphql"
	docker build -f graphql/Dockerfile -t ${REPO}:graphql ./graphql
	docker push ${REPO}:graphql

sqlite:
	@echo "Building sqlite"
	docker build -f sqlite/Dockerfile -t ${REPO}:sqlite ./sqlite
	docker push ${REPO}:sqlite

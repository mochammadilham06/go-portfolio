run : 
	@echo "Run the application"
	go run main.go

build : 
	@echo "Build the application"
	go build -o bin/app main.go

start : build
	@echo "Run the application"
	./bin/app

swag :
	@echo "Generate Swagger documentation"
	swag init --generalInfo main.go

wire :
	@echo "Wire generate"
	@wire ./server/api
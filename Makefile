LOCAL-PORT=8080
install:
	cd 1-pure-lib && bower i --allow-root && pulp build
	cd 2-express-app && npm install
start: install
	cd 2-express-app \
	&& PORT=$(LOCAL-PORT) npm start \
	&& open "http://localhost:$(LOCAL-PORT)/?name=Sailor"

# Docker

SERVICE-NAME=purescript-http-greater
HOST-PORT=8080

docker-start:
	docker build -t $(SERVICE-NAME) . \
	&& docker run -d -p $(HOST-PORT):$(LOCAL-PORT) --name $(SERVICE-NAME) $(SERVICE-NAME) \
	&& echo "       Status: Listening on http://localhost:$(HOST-PORT)" \
	&& echo "   How to use: open http://localhost:$(HOST-PORT)/?name=Sailor" \
	&& echo "  How to stop: make docker-stop" \
	&& open "http://localhost:$(HOST-PORT)/?name=Sailor"

docker-stop:
	docker stop $(SERVICE-NAME) && docker rm $(SERVICE-NAME)

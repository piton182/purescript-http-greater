FROM piton182/purescript

RUN mkdir app

WORKDIR ./app

COPY 1-pure-lib/ ./1-pure-lib
COPY 2-express-app/ ./2-express-app
COPY Makefile ./

CMD make start

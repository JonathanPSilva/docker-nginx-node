FROM node:10-alpine

RUN apk update

USER node

WORKDIR /app

# Copiando Fontes node
COPY --chown=node:node ./app .

EXPOSE 3000

HEALTHCHECK --interval=12s --timeout=12s --start-period=10s \  
 CMD node healthcheck.js

CMD [ "node", "server.js" ]
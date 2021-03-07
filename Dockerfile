FROM node:14-alpine

ARG SCRIPT=server.js

WORKDIR /app

RUN npm i mysql

COPY ${SCRIPT} /app/run.js

EXPOSE 8000

CMD ["node", "run.js"]
#
# Build dependency
FROM python as ImageBuilder

COPY ./images/ /images

WORKDIR /images

RUN pip install Pillow \
    && python plot.py

#
# Runtime Image
FROM node:14-alpine

ARG SCRIPT=server.js

WORKDIR /app

RUN npm i mysql

COPY ${SCRIPT} /app/run.js
COPY --from=ImageBuilder /images/output.png 404.png

EXPOSE 8000

CMD ["node", "run.js"]
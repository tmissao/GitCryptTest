FROM node:9

ENV VERSION ${VERSION:-1.0}
ENV RUN_MODE ${RUN_MODE:-DEFAULT}

RUN mkdir -p /opt/app

WORKDIR /opt/app

COPY package.json .

RUN npm install \
    && npm cache clean --force

COPY . .

CMD ["npm", "start"] 
FROM node:16

ENV MONGODB_CONNECTION_PROTOCOL mongodb+srv
ENV MONGODB_DB_NAME gha-demo
ENV MONGODB_CLUSTER_ADDRESS cluster0.nynay.mongodb.net
ENV MONGODB_USERNAME satyamshankar764
ENV MONGODB_PASSWORD dTKlz6yHb0WLPscC

WORKDIR /app

COPY package*.json .

RUN npm install

COPY . .

CMD ["npm", "start"]
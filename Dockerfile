FROM node:22

WORKDIR /app

COPY . .

WORKDIR /app/docker/images/n8n

RUN npm ci

EXPOSE 5678

CMD ["npm", "run", "start"]

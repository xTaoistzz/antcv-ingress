FROM node:18-alpine

WORKDIR /app

COPY package*.json ./
RUN npm ci

COPY . .

USER root
RUN chmod -R 777 /app/node_modules
RUN npm install -g next

RUN npx next build

# ขั้นตอนอื่นๆ ตามต้องการ

CMD ["npm", "start"]

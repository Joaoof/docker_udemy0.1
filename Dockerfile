FROM node:14-alpine
WORKDIR /app
WORKDIR /netflix-udemy
COPY package.json .
RUN apk add --no-cache python3 g++ make 
RUN yarn install --production
COPY . .
CMD  ["yarn", "run", "dev"]
EXPOSE 3000
#Use Node 14 Alpine version for minimize image size
FROM node:14-alpine
#Node application will located in /app in container
WORKDIR /app
#Copy all file exclude that define in .dockerignore in /app dir
COPY . .
#set environtment variable
ENV NODE_ENV=production DB_HOST=item-db
RUN npm install --production --unsafe-perm && npm run build
EXPOSE 8080
CMD [ "npm", "start" ]

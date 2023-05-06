FROM node:14-alpine
WORKDIR /app
COPY . .
RUN npm install --production --unsafe-perm && npm run build
EXPOSE 8080
CMD [ "npm", "start" ]

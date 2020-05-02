FROM node:current
WORKDIR /app
COPY . /app
EXPOSE 8888

CMD ["node", "app.js"]


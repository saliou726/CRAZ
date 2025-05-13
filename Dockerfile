
FROM node:lts-buster

RUN git clone https://github.com/DavidTechInc/CRAZY-V3.git /app
WORKDIR /app
RUN npm install && npm install -g pm2
COPY . .
EXPOSE 9090
CMD ["npm", "start"]

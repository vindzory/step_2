FROM node:14

WORKDIR /home/ubuntu/app

COPY package*.json ./

RUN npm install

COPY . .

# Expose the port the app runs on
EXPOSE 8080

ENTRYPOINT ["npm"]
# Define the command to run the app
CMD ["start"]

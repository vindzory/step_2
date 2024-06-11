FROM node:14

WORKDIR /app

COPY package*.json ./

RUN npm install

COPY . .

# Expose the port the app runs on
EXPOSE 8000

# Run tests
RUN npm test

//ENTRYPOINT ["npm"]

# Define the command to run the app
CMD ["npm","start"]

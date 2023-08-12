# Use an official Node.js runtime as a parent image
FROM node: 20

# Set the working directory inside the container
WORKDIR /usr/src/app

# Copy package.json and package-lock.json to the container
COPY package*.json ./

# Install app dependencies
RUN npm install

# Copy the rest of the application code to the container
COPY . .

# Expose a port for the application to listen on
EXPOSE 3500

# Define a command to run when the container starts
CMD ["node", "app.js"]

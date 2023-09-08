# Use an official Node.js runtime as a parent image
FROM node:14

# Set the working directory inside the container
WORKDIR /app

# Copy package.json and package-lock.json to the working directory
COPY package*.json ./

# Install application dependencies
RUN npm install
RUN npm install express
RUN npm install body-parser
RUN npm install cors

# Copy the rest of your application code to the working directory
COPY . .

# Expose a port if your application listens on a specific port
EXPOSE 5577

# Command to run your Node.js application
CMD ["node", "test-api.js"]

# Use the official Node.js image as the base image
FROM node:latest

# Set the working directory inside the container
WORKDIR /app

# Copy package.json and package-lock.json into the working directory
COPY package*.json ./

# Install the dependencies
RUN npm install

# Copy the rest of the application code into the working directory
COPY . .

# Expose the port on which the application will run
EXPOSE 3000

# Start the development server
CMD ["npm", "start"]

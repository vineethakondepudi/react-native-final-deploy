# Use an official Node.js runtime as a parent image
FROM node:18

# Set the working directory in the container
WORKDIR /app

# Install React Native CLI
RUN npm install -g react-native-cli

# Copy the project files to the working directory
COPY . .

# Install project dependencies
RUN npm install

# Expose the port the app runs on
EXPOSE 8081

# Start the React Native server
CMD ["npm", "start"]

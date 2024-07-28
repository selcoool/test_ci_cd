# Use a base image
FROM node:22.5-alpine

# Set the working directory
WORKDIR /app

# Copy package.json and package-lock.json
COPY package*.json ./

# Install dependencies
RUN npm ci

# Copy the rest of your application files
COPY . .

# Expose the application port
EXPOSE 3000

# Define the command to run your app
CMD ["npm", "start"]

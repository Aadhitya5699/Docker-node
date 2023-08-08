# Use the official Node.js base image
FROM node:14

# Set the working directory
WORKDIR /app

# Copy package.json and package-lock.json
COPY package*.json ./

# Install app dependencies
RUN npm install

# Copy the Node.js app into the container
COPY . .

# Expose the necessary port
EXPOSE 3000

# Start the Node.js app
CMD ["node", "app.js"]

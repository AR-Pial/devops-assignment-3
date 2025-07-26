# Use Node.js base image
FROM node:18

# Set working directory inside the container
WORKDIR /app

# Copy package.json and install dependencies
COPY package*.json ./
RUN npm install

# Copy all source code
COPY . .

# Expose the port your app uses (5000)
EXPOSE 5000

# Start the app
CMD ["node", "src/server.js"]

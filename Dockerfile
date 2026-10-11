# Use Node.js v16 base image
FROM node:16

# Set working directory inside the container
WORKDIR /app

# Copy package.json first (better caching)
COPY package.json .

# Install dependencies
RUN npm install

# Copy all project files
COPY . .

# Expose port 3000 for the web app
EXPOSE 3000

# Start the application
CMD ["npm", "start"]

#Placeholders!

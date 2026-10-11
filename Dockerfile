# Use Node.js v16 as the base image.
# This provides a preconfigured environment with Node and npm already installed.
FROM node:16

# Set working directory inside the container
WORKDIR /app

# Copy only package.json first.
# This allows Docker to cache npm install results unless dependencies change.

COPY package.json .

# Install dependencies
RUN npm install

# Copy the rest of the application files into the container.
# This includes your source code, configuration, and assets.

COPY . .

# Expose port 3000 so the container can communicate with the outside world.
# Codespaces and Docker will map this port to your host machine.

EXPOSE 3000

# Start the Node.js application.
# This runs "npm start" exactly as you would locally.

CMD ["npm", "start"]







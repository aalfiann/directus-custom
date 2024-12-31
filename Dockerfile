# Use an official Node.js runtime as a parent image
FROM node:18

# Set the working directory inside the container
WORKDIR /app

# Copy package.json and package-lock.json to the working directory
COPY package.json package-lock.json ./

# Install the main project dependencies
RUN npm install

# Copy the entire project directory to the container
COPY . .

# Run the build.sh script
RUN chmod +x ./build.sh

# Expose the port your application runs on (update if necessary)
EXPOSE 8055

# Default command (can be overridden by docker-compose)
CMD ["npm", "start"]

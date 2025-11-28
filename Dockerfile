# Lightweight Node.js base image
FROM node:18-alpine

# Create working directory
WORKDIR /app

# Copy dependency file
COPY package.json ./

# Install only production dependencies
RUN npm install --production

# Copy remaining service files
COPY . .

# Expose port used by the service
EXPOSE 3000

# Start the microservice
CMD ["npm", "start"]
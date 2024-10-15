# frontend/Dockerfile

# Base image
FROM node:18-alpine

WORKDIR /usr/src/app

# Install dependencies
COPY package*.json ./
RUN npm install

# Copy the rest of the app
COPY . .

# Build the React app
RUN npm run build

EXPOSE 3000
CMD ["npm", "start"]

# Stage 1: Build the application
FROM node:22-alpine AS build

# Set working directory
WORKDIR /app

# Install dependencies
COPY package*.json ./
# COPY yarn.lock ./

# Install dependencies (use npm or yarn based on your project)
RUN npm install
# If you use Yarn, uncomment the line below and comment out the npm install line
# RUN yarn install

# Copy the rest of the application code
COPY . .

# Build the application
RUN npm run build
# If you use Yarn, uncomment the line below and comment out the npm run build line
# RUN yarn build

# Stage 2: Serve the application with Nginx
FROM nginx:alpine

# Remove default Nginx static assets
RUN rm -rf /usr/share/nginx/html/*

# Copy the built files from the build stage
COPY --from=build /app/dist /usr/share/nginx/html

# Copy custom Nginx configuration if you have one
# Uncomment the lines below if you have a custom nginx.conf
# COPY nginx.conf /etc/nginx/nginx.conf

# Expose port 80
EXPOSE 80

# Start Nginx server
CMD ["nginx", "-g", "daemon off;"]

# Stage 1: Build the Angular application
FROM node:16 AS build
WORKDIR /app
COPY package.json ./
RUN npm install
COPY . .
RUN npm run build --prod

# Stage 2: Serve the Angular application
FROM nginx:alpine
COPY --from=build /app/dist/* /usr/share/nginx/html
COPY nginx.conf /etc/nginx/conf.d/default.conf
EXPOSE 80

# Start NGINX (default command, but can be overridden)
CMD ["nginx", "-g", "daemon off;"]

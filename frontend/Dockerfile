# Stage 1: Build the Angular application
FROM node:16 AS build
WORKDIR /app
COPY package.json ./
RUN npm install
COPY . .
RUN npm run build --prod

# Stage 2: Serve the Angular application
FROM nginx:alpine
COPY --from=build /app/dist/frontend /usr/share/nginx/html
COPY entrypoint.sh /entrypoint.sh
RUN chmod +x /entrypoint.sh
EXPOSE 80
ENTRYPOINT ["/entrypoint.sh"]


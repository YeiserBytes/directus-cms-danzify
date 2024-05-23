FROM node:alpine

# Update-alpine
RUN apk update
RUN apk upgrade

# Create app directory
WORKDIR /app

# Move to app directory
COPY . .

# Install packages
RUN npm install

EXPOSE 8055

CMD ["pnpm", "start"]

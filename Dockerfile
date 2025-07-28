FROM php:8.2-fpm

# Set working directory
WORKDIR /app

# Install required packages (git, unzip, composer optional)
RUN apt-get update && apt-get install -y \
    git unzip curl \
    && docker-php-ext-install pdo pdo_mysql

COPY . .

EXPOSE 9000


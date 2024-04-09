FROM drupal:9-apache

COPY ./ /var/www/html/

# Настройка правильного владельца для файлов Drupal
RUN chown -R www-data:www-data /var/www/html/sites

# Настраиваем Apache
RUN a2enmod rewrite

EXPOSE 80

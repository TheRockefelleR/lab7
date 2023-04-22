# Obraz nginx
FROM nginx

# Ustawienie obszaru roboczego
WORKDIR /usr/share/nginx/html

# Skopiowanie naszej strony statycznej do serwera
COPY index.html .

# Nasłuchiwanie wewnetrzne na porcie 80
EXPOSE 80

# Uruchomienie nginx
CMD ["nginx", "-g", "daemon off;"]
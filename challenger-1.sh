#!/bin/bash
# essa é a variável do arquivo index.html que eu quero que apareça na web quando eu executar:
INDEX_HTML='<!doctype html>

<html>

<head>

<title>Serving index.html with Nginx</title>

</head>

<body>

<h1>This is my archive of Somalia. </h1>

<p>A Somália produziu, em 2019: 958 milhões de litros de leite de camela.</p>

</body>

</html>'

# esse comando remove todas dependencias e o programa em si antes de instalar o nginx novamente:
for nginxfdp in $(sudo dpkg -l | grep nginx | awk {'print $2'}); do printf $nginxfdp; sudo apt purge -y $nginxfdp; done

sudo rm -rf /var/www/*

echo "aqui termina todo processo de uninstall do nginx"
# aqui começa o processo de update dos apps:
sudo apt update -y
# aqui começa o processo de instalação do nginx:
sudo apt install nginx -y
# aqui ele habilita o start do nginx sempre que ligar a vm:
sudo systemctl enable nginx
# aqui vou excluir o arquivo padrão do nginx:
sudo rm -rf /var/www/html/*
# aqui ele vai criar o arquivo index.html que eu customizei:
echo $INDEX_HTML | sudo tee /var/www/html/index.html

sudo systemctl restart nginx

echo "aqui ele já restartou o nginx para atualizar o index.html"

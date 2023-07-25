# Instalando e configurando o nginx:
**1. update and install nginx with apt:**
```
sudo apt update && sudo apt install nginx -y
```
**2.Enable the nginx starts when the vm starts too:**
```
sudo systemctl enable nginx
```
**3. Delete the default file of nginx web server:**
```
sudo rm -rf /var/www/html/*
```
**4. Create a new file custom to open in web server:**
```
sudo vim /var/www/html/index.html
```
**5. Paste the .html file:**
```
<!doctype html>

<html>

<head>

<title>Serving index.html with Nginx</title>

</head>

<body>

<h1>This is my archive of Somalia. </h1>

<p>A Somália produziu, em 2019: 958 milhões de litros de leite de camela.</p>

</body>

</html>
```
**6. Restart nginx with systemctl:**
```
sudo systemctl restart nginx
```
``is it.``


server {


    server_name example-fastcgi-cache.com   www.example-fastcgi-cache.com;


    access_log off;
    error_log off;


    root /var/www/example-fastcgi-cache.com/htdocs;


    index index.php index.html index.htm;


    include common/wpfc.conf;
    include common/wpcommon.conf;
    include common/locations.conf;
    include /var/www/example-fastcgi-cache.com/conf/nginx/*.conf;
}

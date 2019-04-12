#Runtime ubuntu 14.04


# change owner of the file to 'ubuntu'
chown ubuntu /etc/nginx -R



# install nginx
sudo apt-get install nginx


# start nginx service
sudo service nginx restart


# upload .crt .key ssl certificates to /etc/nginx
#1_www.domain.com_bundle.crt
#2_www.domain.com.key
#1_a.domain.com_bundle.crt;
#2_a.domain.com.key;


# /etc/nginx/conf.d/ssl.conf file looks like this
server {
   	listen 80;
   	server_name a.domain.com; 
    return 301 https://a.domain.com$request_uri;
}

server {
	listen 443 ssl;
        server_name domain.com www.domain.com;
	ssl on;
	ssl_certificate 1_domain.com_bundle.crt;
	ssl_certificate_key 2_domain.com.key;
	ssl_session_timeout 5m;
	ssl_protocols TLSv1 TLSv1.1 TLSv1.2;
	ssl_ciphers ECDHE-RSA-AES128-GCM-SHA256:HIGH:!aNULL:!MD5:!RC4:!DHE;
        ssl_prefer_server_ciphers on;    

        location / {
  			#reverse proxy below
        	#proxy_pass http://127.0.0.1:8001;
		root /var/www/www;
		index index.php index.html index.htm;
        }
}

server {
   	listen 80;
   	server_name www.domain.com domain.com; 
    return 301 https://domain.com$request_uri;
}

server {
        listen 443 ssl;
        server_name a.domain.com;
        ssl on;
        ssl_certificate 1_a.domain.com_bundle.crt;
        ssl_certificate_key 2_a.domain.com.key;
        ssl_session_timeout 5m;
        ssl_protocols TLSv1 TLSv1.1 TLSv1.2;
        ssl_ciphers ECDHE-RSA-AES128-GCM-SHA256:HIGH:!aNULL:!MD5:!RC4:!DHE;
        ssl_prefer_server_ciphers on;

	location / {
                #proxy_pass http://127.0.0.1:8001;
                root /var/www/a;
                index index.php index.html index.htm;
        }
}

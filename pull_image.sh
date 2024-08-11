username="xxx"
acr_image_prefix="registry.cn-hangzhou.aliyuncs.com/xxx"

sudo docker login --username=${username} registry.cn-hangzhou.aliyuncs.com

sudo docker pull ${acr_image_prefix}/nginx-proxy-manager:latest
sudo docker pull ${acr_image_prefix}/postgres:15-alpine
sudo docker pull ${acr_image_prefix}/redis:6-alpine
sudo docker pull ${acr_image_prefix}/weaviate:1.19.0
sudo docker pull ${acr_image_prefix}/dify-sandbox:0.2.1
sudo docker pull ${acr_image_prefix}/squid:latest
sudo docker pull ${acr_image_prefix}/nginx:latest
sudo docker pull ${acr_image_prefix}/dify-api:0.6.16
sudo docker pull ${acr_image_prefix}/dify-web:0.6.16

sudo docker tag ${acr_image_prefix}/nginx-proxy-manager:latest jc21/nginx-proxy-manager:latest
sudo docker tag ${acr_image_prefix}/postgres:15-alpine postgres:15-alpine
sudo docker tag ${acr_image_prefix}/redis:6-alpine redis:6-alpine
sudo docker tag ${acr_image_prefix}/weaviate:1.19.0 semitechnologies/weaviate:1.19.0
sudo docker tag ${acr_image_prefix}/dify-sandbox:0.2.1 langgenius/dify-sandbox:0.2.1
sudo docker tag ${acr_image_prefix}/squid:latest ubuntu/squid:latest
sudo docker tag ${acr_image_prefix}/nginx:latest nginx:latest
sudo docker tag ${acr_image_prefix}/dify-api:0.6.16 langgenius/dify-api:0.6.16
sudo docker tag ${acr_image_prefix}/dify-web:0.6.16 langgenius/dify-web:0.6.16


# sudo mkdir -p /etc/docker
# sudo tee /etc/docker/daemon.json <<-'EOF'
# {
#     "registry-mirrors": [
#         "https://dockerhub.icu",
#         "https://docker.ckyl.me",
#         "https://docker.awsl9527.cn"
#     ]
# }
# EOF

# sudo systemctl daemon-reload
# sudo systemctl restart docker
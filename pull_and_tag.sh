acr_image_prefix="registry.cn-hangzhou.aliyuncs.com/xxx"

docker pull ${acr_image_prefix}/postgres:15-alpine
docker pull ${acr_image_prefix}/redis:6-alpine
docker pull ${acr_image_prefix}/weaviate:1.19.0
docker pull ${acr_image_prefix}/dify-sandbox:0.2.11
docker pull ${acr_image_prefix}/squid:latest
docker pull ${acr_image_prefix}/nginx:latest
docker pull ${acr_image_prefix}/dify-api:1.1.3
docker pull ${acr_image_prefix}/dify-web:1.1.3
docker pull ${acr_image_prefix}/dify-plugin-daemon:0.0.6-local

docker tag ${acr_image_prefix}/postgres:15-alpine postgres:15-alpine
docker tag ${acr_image_prefix}/redis:6-alpine redis:6-alpine
docker tag ${acr_image_prefix}/weaviate:1.19.0 semitechnologies/weaviate:1.19.0
docker tag ${acr_image_prefix}/dify-sandbox:0.2.11 langgenius/dify-sandbox:0.2.11
docker tag ${acr_image_prefix}/squid:latest ubuntu/squid:latest
docker tag ${acr_image_prefix}/nginx:latest nginx:latest
docker tag ${acr_image_prefix}/dify-api:1.1.3 langgenius/dify-api:1.1.3
docker tag ${acr_image_prefix}/dify-web:1.1.3 langgenius/dify-web:1.1.3
docker tag ${acr_image_prefix}/dify-plugin-daemon:0.0.6-local langgenius/dify-plugin-daemon:0.0.6-local

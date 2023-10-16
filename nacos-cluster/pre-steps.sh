# 第一步，拷贝容器中的原始配置文件
docker run --name nginx -p 9001:90 -d nginx
# 拷贝
docker cp nginx:/etc/nginx/nginx.conf ./nginx/conf/nginx.conf
docker cp nginx:/etc/nginx/conf.d ./nginx/conf/conf.d
docker cp nginx:/usr/share/nginx/html ./nginx/
# 删除容器 
docker rm -f nginx
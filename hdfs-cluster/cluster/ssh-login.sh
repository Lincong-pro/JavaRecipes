ssh-keygen
sudo ssh-copy-id -i /root/.ssh/id_rsa -p 22 root@172.16.238.10
sudo ssh-copy-id -i /root/.ssh/id_rsa -p 22 root@172.16.238.11
sudo ssh-copy-id -i /root/.ssh/id_rsa -p 22 root@172.16.238.12

bash start-all.sh
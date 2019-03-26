sudo hostnamectl set-hostname ${var.client_acronym}-db
echo '127.0.0.1 ${var.client_acronym}-db' | sudo tee -a /etc/hosts
echo 'ssh-rsa AAAAB3NzaC1yc2EAAAABJQAAAQEAlYGrr8kx9Ouipz47laZqeF3WSgUJxf0eekdVI+AjZ4ylKL0/ScXd8gimf81eexkDv5i+K1FKJRvUZf5faggFVH31w46FjtYmfSXi017fZ+SWqpZcv1nYKM4E6HUqiqfIYyuft5ODofBGDd9QrCDlELoH+j7DqXaHYSUMiWxVO4716Or4JWRIUjIskBD8hV1/JT4/rep9w3F6K7qkqDODQht/Wj5GvnqXuLWduS1tfgbgx65XIWubBIRZTBs1f6NuM4bpWpy2k4US80RVc1SgoEMA/cXMS7xsBAfYS3P5PcAOHPhXpPLk84uc06ohZ2LR7EVvnYAmbA2HYfvwU8AkHw== eugene' >> ~/.ssh/authorized_keys
echo 'ssh-rsa AAAAB3NzaC1yc2EAAAABJQAAAQEAiGm7S+KTOhhDmYArNSlR8ctoVcykMXOEJ58yIHNQ1TuaH2ZEraQmwoTIu2BNnq4DBatrpiuR++TCqj4OvEelXT/71KgdgxPrSwVpwpdh8Nuqpr9GdbFUV5kxoK/ciMN0RE7dN01gnzT+hB2s8riE1djRZQYZlzMnT9oyKq9ixSgwcmI88/foFumZL7Efoic5vqT9sBoG1o6lVG+SzNk/y2wDs899I2E99EhLcFNl7SBBk6r/Hv3g+zdzYnqYtke+zbJP60Hhw++T9Qa7BnU6eD432QavCx2bxL/VksaQNaE3JyUO5msIi0/nfRJnNXYDACTNQL4/LcSdOdoAHIraOQ== morne' >> ~/.ssh/authorized_keys
echo 'ssh-rsa AAAAB3NzaC1yc2EAAAABJQAAAQEAr8kyGJj502YAa25q3zWXuwJJNIGHbxz7NvEAlMXpGZy6e5GJel7ZJs7sazWRLluB9AKigcQ4Xv82OzIr0525ofJ+GLdU2LjWWUIyf+prZFLl0r+vI/6EcA4VEmkNRo3aN2ooSlxgIJXoOTIbe68xJdf/tLIgLC0pxzvy0nX9o6sgIJL4yi+qKvtk4qGzkHZeXSrnrfebi32xFz216qHnylsBl8X8UBH0qk5BAlZVpjPCsvAI39Y2Ctp5rYapqPjXF7KCOg7Ww0eTquczyWeA8h2GVdjyEmnAqSwMyV++UZ582+febN1tLWCBraZKl3CnwcEbJ+aJQHDWxgvbQ+uaTQ== john' >> ~/.ssh/authorized_keys
echo 'ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAABAQDb1EBeGu7GnQHKrLi7Eaf/A7cGupGCANGYEIiEZjKqWz67K43W+66fS5ZucHFulSXFgKhoT8gRL7EeIA1xnRPpPbiyjYg3vffJXjVn/CPX/fLQQYw/8W0euJv8UF/QMfhh0tAz3DchX2m6Ueuz7rcEv+M/PfOSQXghGcd5vQdGn+axcN2L9TXc5aqzQrV/G+HEc5wPaoWNA0iPP60AcYTsYze7TSWuyrOiJrt5eMoSt/HsnXYW8ZZOy2MzbqP3isulpejmmtEASfS5qrh1BORcKRDIPxU1gOAflj68bSVh1BKIgVTW+PkrVVbNrPQKiQbG45Jexe6ORKic12SknWYf grahame' >> ~/.ssh/authorized_keys
echo 'ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAABAQCqj5rpAjr5N6yEMmkQbf9TQFORIgfBFzUyR6G3NYdrqKBkLOo2ymK5fydJosQPETcs0s5AdMw9O60d/frSD/U7pyOkB3WdA9MNF50I6xDSsNVk3O4uyacEU7FmCKhM1eOge0+YchSUcJ8HC+W/cu4zUOMy2v10eLfkjj1bSGy3vjTbN2OmF0WZPG/AYwighib4I8gcynJGCCxSHlDwORsLfAEcm8fIL+VVcJDSBQxyOgUYosPjTtiKMViVHvR8H4Z8kFZOC0V1uY7rQZxNmC64OWX2hspB15OWhf0KwgjVKun/H7Mf5/Iak/jueBzV5upVVSW632gQBo1XbcQ58uwH pierre' >> ~/.ssh/authorized_keys
sudo apt-get update
sudo apt-get upgrade -y
echo America/Los_Angeles | sudo tee /etc/timezone
sudo rm /etc/localtime
sudo ln -s /usr/share/zoneinfo/America/Los_Angeles /etc/localtime
sudo apt-get install dos2unix --assume-yes
sudo apt-get install ntp --assume-yes
sudo sed -i 's|server 0.ubuntu.pool.ntp.org|server 0.north-america.pool.ntp.org|g' /etc/ntp.conf
sudo sed -i 's|server 1.ubuntu.pool.ntp.org|server 1.north-america.pool.ntp.org|g' /etc/ntp.conf
sudo sed -i 's|server 2.ubuntu.pool.ntp.org|server 2.north-america.pool.ntp.org|g' /etc/ntp.conf
sudo sed -i 's|server 3.ubuntu.pool.ntp.org|server 3.north-america.pool.ntp.org|g' /etc/ntp.conf
sudo mkdir /app01
sudo mkdir /app02
sudo mkdir /app03
sudo mkdir /app04
sudo mkdir /bank_db_data
sudo mkdir /vend_db_data
sudo mkdir /shared_db_data
sudo mkdir /kineto-software
sudo mkfs -t ext4 /dev/xvdh
sudo mkfs -t ext4 /dev/xvdi
sudo mkfs -t ext4 /dev/xvdj
sudo mkfs -t ext4 /dev/xvdk
sudo mkfs -t ext4 /dev/xvdl
sudo mkfs -t ext4 /dev/xvdm
sudo mkfs -t ext4 /dev/xvdn
sudo mount /dev/xvdh /app01
sudo mount /dev/xvdi /app02
sudo mount /dev/xvdj /app03
sudo mount /dev/xvdk /app04
sudo mount /dev/xvdl /bank_db_data
sudo mount /dev/xvdm /vend_db_data
sudo mount /dev/xvdn /shared_db_data
echo '/dev/xvdh  /app01  ext4    defaults    0 2' | sudo tee -a /etc/fstab
echo '/dev/xvdi  /app02  ext4    defaults    0 2' | sudo tee -a /etc/fstab
echo '/dev/xvdj  /app03  ext4    defaults    0 2' | sudo tee -a /etc/fstab
echo '/dev/xvdk  /app04  ext4    defaults    0 2' | sudo tee -a /etc/fstab
echo '/dev/xvdl  /bank_db_data  ext4    defaults    0 2' | sudo tee -a /etc/fstab
echo '/dev/xvdm  /vend_db_data  ext4    defaults    0 2' | sudo tee -a /etc/fstab
echo '/dev/xvdn  /shared_db_data  ext4    defaults    0 2' | sudo tee -a /etc/fstab
sudo apt-get install automake autotools-dev fuse g++ git libcurl4-gnutls-dev libfuse-dev libssl-dev libxml2-dev make pkg-config -y
dos2unix ~/s3fs_build.sh
chmod 0766 ~/s3fs_build.sh
~/s3fs_build.sh ~
echo 'AKIAIP64X6EUYMLNV2JA:LUSnq4IxD4WripppGdHtZG0TEW/oPxpI3TI3J75r' | sudo tee -a /etc/passwd-s3fs
sudo apt-get update
sudo chown root:root /etc/passwd-s3fs
sudo chmod 0640 /etc/passwd-s3fs
echo 'user_allow_other' | sudo tee -a /etc/fuse.conf
rm -rf s3fs-fuse
rm s3fs_build.sh
echo 's3fs#kineto-software /kineto-software fuse retries=5,allow_other,url=https://s3.amazonaws.com 0 0' | sudo tee -a /etc/fstab
sudo shutdown -r 1
sleep 55

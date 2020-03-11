# https://github.com/csirtgadgets/bearded-avenger-deploymentkit/wiki

mkdir cif & cd cif
wget https://github.com/csirtgadgets/bearded-avenger-deploymentkit/archive/3.0.7.tar.gz
 tar -zxvf 3.0.7.tar.gz
cd bearded-avenger-deploymentkit-3.0.7/
sudo -H pip install gevent==1.2.1 cifsdk==3.0.8 pygeoip==0.3.2 Flask-Limiter==0.9.5.1 limits==1.1.1 maxminddb==1.3 geoip2==2.8 dnspython==1.15.0 Flask==0.12.3 flask-cors==3.0.8 sqlalchemy==1.0.19 elasticsearch==5.4 elasticsearch-dsl==5.4 html5lib==1.0b8 apwgsdk==0.0.0a6 csirtg_smrt csirtg_dnsdb==0.0.0a4 flask-bootstrap==3.3.6.0 gunicorn==19.7.1 urllib3==1.23 requests==2.22.0
sudo CIF_ANSIBLE_ES=localhost:9200 bash easybutton.sh
sudo su - cif
cif -p

# Example
cif --itype ipv4 --tags scanner -d

# Start and stop
sudo systemctl stop csirtg-smrt
sudo systemctl stop csirtg-router
sudo systemctl stop cif-router



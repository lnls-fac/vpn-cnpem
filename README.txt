Instalação
----------

sudo dpkg -i openfortivpn_1.8.1-1_amd64.deb
sudo apt-get install -f

Configuração
------------

edite o arquivo 'vpn-cnpem' com seu username (e senha, se quiser)


Sessão
------

sudo openfortivpn -c <caminho para o arquivo>/vpn-cnpem

obs1: lembre-se q, se a senha nãp estiver no arquivo de config, na primeira
vez que o comando for executado duas senhas serão necessárias: a) sudo local e
b) usuário no domínio

obs2: o terminal ficará travado durante a sessão vpn. para abortar a sessão
basta interromper o processo pelo terminal.


IPs na rede TIC
---------------

lnls350-linux            : 10.0.7.55
lnls561-linux (ximenes)  : 10.0.38.51
lnls558-linux (murilo)   : 10.0.38.48
lnls559-linux (ana)      : 10.0.38.50
lnls556-linux (fernando) : 10.0.38.67


Acesso de leitura às PVs
------------------------

export EPICS_CA_ADDR_LIST="10.0.38.46:60000 10.0.38.59:60000"

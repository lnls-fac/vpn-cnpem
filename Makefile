


$(info --- USER INPUT ---)
CNPEM_USERNAME := $(shell ./user-input.sh)
$(info )

install: install-packages install-files update-hosts update-bashrc readme


install-packages:
	@echo "--- INSTALLING OPENFORTVPN ---"
	sudo dpkg -i openfortivpn_1.8.1-1_amd64.deb
	sudo apt-get install -f
	@echo ""

install-files:
	@echo "--- INSTALLING FILES ---"
	mkdir -p ~/bin
	cat ./vpn-cnpem | sed "s/<USERNAME>/"$(CNPEM_USERNAME)"/g" > ~/bin/vpn-cnpem
	chmod o-r ~/bin/vpn-cnpem
	cp -f ./vpn-start.sh ~/bin/
	@echo ""

update-hosts:
	@echo "--- UPDATE HOSTS ---"
	rm -rf ./hosts
	cat /etc/hosts | grep -v "vpn\-" | grep -V "VPN" > ./hosts
	cat ./vpn-hosts >> ./hosts
	sudo cp ./hosts /etc/hosts
	rm -rf ./hosts
	@echo ""

update-bashrc:
	@echo "--- UPDATE USER BASHRC ---"
	sudo cat ~/.bashrc ./vpn-envars.sh >> ./bashrc
	sudo cp ./bashrc ~/.bashrc
	rm -rf ./bashrc
	@echo ""

readme:
	@echo "--- README ---"
	@echo "Successfully installed CNPEM-VPN."
	@echo "a) To start vpn connection just run 'vpn-start.sh in a new terminal!"
	@echo "b) To stop vpn connection, first disconnect all terminals and then..."
	@echo "   ...kill the connection process running in the original terminal."

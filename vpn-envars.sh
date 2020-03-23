
# Variables redefinition to work via VPN:
# NOTE: This method only works for interactive terminals
# In order to have the same result in non-interactive terminals
# this code should be placed at the beggining of the ~/.bashrc file
# right after the import of bashrc-sirius file.
export EPICS_CA_ADDR_LIST="10.0.38.46:60000 10.0.38.59:60000"
export SIRIUS_URL_CONSTS=http://10.0.38.42/control-system-constants
export SIRIUS_URL_CONFIGDB=http://10.0.38.42/config-db

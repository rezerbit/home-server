include .env

upload:
	sudo rsync -e 'ssh -p ${SSH_PORT}' --progress -r ./ ${SSH_USER}@${SSH_HOST}:${HOME_SERVER_PATH}

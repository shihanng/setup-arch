setup_ssh:
	ssh-copy-id -i "${PUBKEY_PATH}" "${LOGINNAME}@${IPADDR}"

install:
	ansible-playbook --diff -vv provision.yml -i hosts --limit "${IPADDR}" --private-key="${PRIVKEY_PATH}" --ask-become-pass --user="${LOGINNAME}"

.PHONY: setup_ssh install

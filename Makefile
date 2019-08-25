setup_ssh:
	ssh-copy-id -i "${PUBKEY_PATH}" "${USERNAME}@${IPADDR}"

install:
	ansible-playbook --diff -vv provision.yml -i hosts --limit "${IPADDR}" --private-key="${PRIVKEY_PATH}" --ask-become-pass

.PHONY: setup_ssh install

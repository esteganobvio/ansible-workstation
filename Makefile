.PHONY: lint
lint:
	yamllint .
	ansible-playbook playbook.yml --syntax-check
	ansible-lint playbook.yml

.PHONY: run
run:
	ansible-playbook playbook.yaml \
	   --extra-vars "@vars/custom.yaml"


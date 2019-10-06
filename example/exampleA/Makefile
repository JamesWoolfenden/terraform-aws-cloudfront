#Makefile
AWS_ACCOUNT ?= "10000000"
AWS_ROLE ?= "Jenkins-Local-Admin"
.PHONY: all

all: init plan build

init:
	rm -rf .terraform/modules
	terraform init -reconfigure

plan: init
	terraform plan -refresh=true
	rm -rf id_rsa.*

build: init
	terraform apply -auto-approve
	rm -rf id_rsa.*

check: init
	terraform plan -detailed-exitcode
	rm -rf id_rsa.*

destroy: init
	terraform destroy -force
	rm -rf id_rsa.*

docs:
	terraform-docs md . > README.md

valid:
	tflint
	terraform fmt -check=true -diff=true

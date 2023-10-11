ENV ?= $(error Please set the ENV var or run "make help")

TF_VAR_QLIK_APIKEY ?= $(error Please set the TF_VAR_QLIK_APIKEY environment)
TF_VAR_QLIK_URI    ?= $(error Please set the TF_VAR_QLIK_URI environment)

TERRAFORM = tofu

define HELP_MESSAGE
Usage:
The tofu command (https://opentofu.org/) must be installed with

	Validate
	$$ make validate ENV={dev|prd}

	Plan
	$$ make plan ENV={dev|prd}

	Deploy
	$$ make deploy ENV={dev|prd}
endef

help:
	$(info ${HELP_MESSAGE})
	@exit 0

deploy: workspace validate plan apply

workspace:
	${TERRAFORM} workspace select ${ENV}

validate: workspace
	${TERRAFORM} validate

plan: validate
	${TERRAFORM} plan -out tmp/${ENV}

apply: plan
	${TERRAFORM} apply tmp/${ENV}

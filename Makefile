current_dir := $(shell pwd)

# 'sudo' could be called inside the Makefile scripts,
# but that is not a good practice, so if you need 'sudo' to run
# the docker utility, please run 'sudo make [COMMAND]'


# removes the generated docker volume
docker-clear:
	docker-compose down --volumes

# builds docker image
docker-build:
	docker-compose build

# runs the resume preview
docker-run:
	docker-compose run best-resume-ever npm install
	docker-compose up

# exports the resumes
docker-export:
	docker-compose run best-resume-ever npm install
	docker-compose run best-resume-ever npm run export

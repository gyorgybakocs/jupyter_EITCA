ifndef env
	ENV=dev
endif

provision:
	docker-compose -f environment/$(ENV).yml build --no-cache
up:
	docker-compose -f environment/$(ENV).yml up --build --remove-orphans --force-recreate
	cp config/config-$(env).cfg config/config.cfg
down:
	docker-compose -f environment/$(ENV).yml down --remove-orphans -v

all: down provision up

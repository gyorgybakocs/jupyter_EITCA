ifndef env
	ENV=dev
endif

provision:
	docker-compose -f environment/$(ENV).yml build --no-cache
up:
	cp config/config-$(ENV).cfg config/config.cfg
	docker-compose -f environment/$(ENV).yml up --build --remove-orphans --force-recreate
down:
	docker-compose -f environment/$(ENV).yml down --remove-orphans -v

all: down provision up

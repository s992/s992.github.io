today = date '+%Y-%m-%d_%H-%M-%S'

build: index.js
	node index

serve: index.js
	http-server build

prod: index.js
	node index --env prod

deploy:
	cd ../build; \
	git status; \
	echo $(date)
	git add .; \
	git commit -m 'New build $(today)'
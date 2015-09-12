build:
	node index

serve:
	http-server build

prod:
	node index --env prod

deploy:
	cd ../build; \
	git status; \
	git add .; \
	git commit -m 'New build'; \
	git push

.PHONY: build serve prod deploy
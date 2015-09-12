build: index.js
	node index

serve: index.js
	http-server build

prod: index.js
	node index --env prod
install: # Install packages (clean install)
	npm ci

lint-html: # Check html files with linter
	npx htmlhint ./src/*.html

lint-css: # Check css, scss files with linter
	npx stylelint ./src/styles/*.css
	npx stylelint ./src/styles/**/*.scss

deploy:
	npx surge ./src/

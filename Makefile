CSS_FILES = normalize.css org-syntax.css solarized-light.css custom.css

combined.css: $(CSS_FILES)
	@echo "===> Combining CSS files"
	@cat $(CSS_FILES) > combined.css

normalize.css:
	@echo "===> Downloading Normalized CSS"
	@curl --silent --fail --show-error -o normalize.css \
	  "https://necolas.github.io/normalize.css/6.0.0/normalize.css"

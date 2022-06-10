local-install:
	helm upgrade -i -n store --create-namespace --wait pos ./charts/ncx-pos
	helm upgrade -i -n store --create-namespace --wait ide ./charts/ncx-ide
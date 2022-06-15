local-install:
	helm upgrade -i -n store --create-namespace --wait pos ./charts/ncx-pos
	helm upgrade -i -n store --create-namespace --wait ide ./charts/ncx-ide

local-upgrade-ide:
	helm upgrade -i -n store --create-namespace --wait \
	--set "image.repository=localhost:32000/briand787b/ncx-ide" \
	--set "image.tag=latest" \
	ide ./charts/ncx-ide
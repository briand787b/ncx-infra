local-install:
	-helm -n store uninstall pos ide
	helm upgrade -i -n store --create-namespace --wait pos ./charts/ncx-pos
	helm upgrade -i -n store --create-namespace --wait ide ./charts/ncx-ide

local-upgrade-gateway:
	-helm -n store uninstall gateway
	helm upgrade -i -n store --create-namespace --wait \
	--set "image.repository=localhost:32000/briand787b/ncx-gateway" \
	--set "image.tag=latest" \
	gateway ./charts/ncx-gateway

local-upgrade-ide:
	-helm -n store uninstall ide
	helm upgrade -i -n store --create-namespace --wait \
	--set "image.repository=localhost:32000/briand787b/ncx-ide" \
	--set "image.tag=latest" \
	ide ./charts/ncx-ide

local-upgrade-pos:
	-helm -n store uninstall pos
	helm upgrade -i -n store --create-namespace --wait \
	--set "image.repository=localhost:32000/briand787b/ncx-pos" \
	--set "image.tag=latest" \
	pos ./charts/ncx-pos
local-install:
	-helm -n store uninstall pos gateway-store --wait
	helm upgrade -i -n store --create-namespace  pos ./charts/ncx-pos
	helm upgrade -i -n store --create-namespace  gateway-store ./charts/ncx-gateway-store
	-helm -n web uninstall ide gateway-web --wait
	helm upgrade -i -n web --create-namespace  ide ./charts/ncx-ide
	helm upgrade -i -n web --create-namespace  gateway-web ./charts/ncx-gateway-web

local-upgrade-gateway-store:
	-helm -n store uninstall gateway-store --wait
	helm upgrade -i -n store --create-namespace \
	--set "image.repository=localhost:32000/briand787b/ncx-gateway-store" \
	--set "image.tag=latest" \
	gateway-store ./charts/ncx-gateway-store

local-upgrade-gateway-web:
	-helm -n web uninstall gateway-web --wait
	helm upgrade -i -n web --create-namespace \
	--set "image.repository=localhost:32000/briand787b/ncx-gateway-web" \
	--set "image.tag=latest" \
	gateway-web ./charts/ncx-gateway-web

local-upgrade-ide:
	-helm -n web uninstall ide --wait
	helm upgrade -i -n web --create-namespace  \
	--set "image.repository=localhost:32000/briand787b/ncx-ide" \
	--set "image.tag=latest" \
	ide ./charts/ncx-ide

local-upgrade-pos:
	-helm -n store uninstall pos --wait
	helm upgrade -i -n store --create-namespace \
	--set "image.repository=localhost:32000/briand787b/ncx-pos" \
	--set "image.tag=latest" \
	pos ./charts/ncx-pos
local-install:
	helm upgrade -i --create-namespace store -n store ./charts/ncx-pos
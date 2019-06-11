setup
setUpPropfindRoute

	self server addService: '/propfind' action:[:req |
		req send200Response: req method.
	] methods: {'PROPFIND'}.

	^ self localHostUrl, '/propfind'
setup
setUpPropfindRoute

	self server addService: '/propfind' action:[:req |
		self isValidPropfindQuery: req
			ifTrue: [ req send200Response: req method ]
			ifFalse: [req send400Response ]
	] methods: {'PROPFIND'}.

	^ self localHostUrl, '/propfind'
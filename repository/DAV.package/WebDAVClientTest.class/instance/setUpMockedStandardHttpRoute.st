setup
setUpMockedStandardHttpRoute

	self mockserver addService: '/standardHttp' action:[:req |
		req send200Response: req method
	] methods: {'GET' . 'PUT' . 'DELETE'}.

	^ self localHostUrl, '/standardHttp'
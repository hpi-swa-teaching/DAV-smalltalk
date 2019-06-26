setup
setUpDefaultMockedRoute

	self mockserver addService: '/default' action:[:req | 
		 req send200Response: req method
	] methods: {'GET'. 'PUT'. 'POST'. 'DELETE'}.

	^ self localHostUrl, '/default' 
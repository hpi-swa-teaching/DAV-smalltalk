setup
setUpDefaultRouteOnMockedServer

	self mockserver addService: '/default' action:[:req | 
		 req send200Response: req method
	] methods: {'GET'. 'PUT'. 'POST'. 'DELETE'}
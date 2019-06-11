setup
setUpReportRoute

	self server addService: '/report' action:[:req | 
		req send200Response: req method.
	] methods: {'REPORT'}.

	^ self localHostUrl, '/report' 
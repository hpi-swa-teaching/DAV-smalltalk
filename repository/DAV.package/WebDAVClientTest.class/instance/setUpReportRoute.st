setup
setUpReportRoute

	self server addService: '/report' action:[:req | 
		self isValidReportQuery: req
			ifTrue: [ req send200Response: req method]
			ifFalse: [ req send400Response ]
	] methods: {'REPORT'}.

	^ self localHostUrl, '/report' 
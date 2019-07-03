setup
setUpEventRouteOnMockedServer

	self mockserver addService: '/calendar/event' action: [:req | 
		({'REPORT'. 'PROPFIND'} includes: req method) ifTrue:
			[self isValidEventQuery: req
				ifTrue: [ req sendResponse:
					(WebResponse protocol: 'HTTP/1.1' code: 200) content: self eventsXml]
			 	ifFalse: [ req send400Response]].
		
		req method = 'GET' ifTrue: [
			req sendResponse: 
				(WebResponse protocol: 'HTTP/1.1' code: 200) content: self iCalData]
	] methods: {'REPORT'. 'PROPFIND'. 'GET'}
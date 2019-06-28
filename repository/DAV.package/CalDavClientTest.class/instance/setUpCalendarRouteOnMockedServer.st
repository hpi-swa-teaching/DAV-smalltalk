setup
setUpCalendarRouteOnMockedServer

	self mockserver addService: '/calendar' action: [:req | 
		self isValidCalendarQuery: req
			ifTrue: [
				req method = 'PROPFIND' ifTrue:
					[req sendResponse:
					(WebResponse protocol: 'HTTP/1.1' code: 200) content: self calendarXml].
				req method = 'REPORT' ifTrue:
					[req sendResponse:
					(WebResponse protocol: 'HTTP/1.1' code: 200) content: self eventsXml]]
				
			 ifFalse: [ req send400Response]
	] methods: {'PROPFIND'. 'REPORT'}
tests - requests
testHandleResponse

	self should: [self client handleResponse: (WebResponse protocol: 'HTTP' code: 400)]
		raise: Warning.
	self shouldnt: [self client handleResponse: (WebResponse protocol: 'HTTP' code: 200)]
		raise: Warning		
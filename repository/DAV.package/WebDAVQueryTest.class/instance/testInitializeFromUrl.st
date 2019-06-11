tests - accessors
testInitializeFromUrl

	self query initializeFromUrl: 'https://www.test.de/method'.
	self assert: 'https://www.test.de/method' equals: self query fullUrl.
	self assert: '/method' equals: self query rawUrl
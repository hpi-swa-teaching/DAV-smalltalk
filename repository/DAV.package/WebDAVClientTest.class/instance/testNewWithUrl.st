tests - instanceCreation
testNewWithUrl

	self client: (WebDAVClient url: 'https://www.testUrl.de').
	self assert: 'https' equals: self client scheme.
	self assert: 'www.testUrl.de' equals: self client server
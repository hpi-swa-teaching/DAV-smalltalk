tests - fetching
testFetchEtagOfEventWithMockedServer

	| etag |
	
	self setUpClientForMockedServer.

	etag := self client fetchEtagOfEventFrom: self eventUrlOnMockedServer.
	
	self assert: '"eTag"' equals: etag
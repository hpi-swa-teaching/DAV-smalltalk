tests - fetching
testFetchEtagOfEventWithRealServer

	| etag |
	
	self setUpClientForRealServer.

	etag := self client fetchEtagOfEventFrom: self eventUrlOnRealServer.
	
	self assert: '"54185"'equals: etag
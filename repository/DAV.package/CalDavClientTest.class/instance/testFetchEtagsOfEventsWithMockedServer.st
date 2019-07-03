tests - fetching
testFetchEtagsOfEventsWithMockedServer

	| eventData |

	self setUpClientForMockedServer. 
	eventData := client fetchEtagsOfEventsFrom: self eventUrlOnMockedServer.
	
	self assert: 	'eventUrl' equals: ((eventData at: 1) at: #urlLocalPart).
	self assert: '"eTag"' equals: ((eventData at: 1) at: #'d:getetag')
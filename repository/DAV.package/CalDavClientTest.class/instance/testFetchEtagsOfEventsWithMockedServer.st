tests - fetching
testFetchEtagsOfEventsWithMockedServer

	| eventData |

	self setUpClientForMockedServer. 
	eventData := client fetchEtagsOfEventsFrom: self eventUrlOnMockedServer.
	
	self assert: 	'eventUrl' equals: (eventData first at: #urlLocalPart).
	self assert: '"eTag"' equals: (eventData first at: #getetag)
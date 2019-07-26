tests - fetching
testFetchEtagsOfEventsForEventUrlsWithMockedServer

	| eventData |

	self setUpClientForMockedServer. 
	eventData := client fetchEtagsOfEventsFrom: self calendarUrlOnMockedServer
							for: {self eventUrlOnMockedServer}.
	
	self assert: 	'eventUrl'
		equals: (eventData first at: #urlLocalPart).
	self assert: '"eTag"' equals: (eventData first at: #getetag)
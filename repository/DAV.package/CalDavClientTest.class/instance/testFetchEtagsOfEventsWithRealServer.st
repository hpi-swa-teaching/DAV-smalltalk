tests - fetching
testFetchEtagsOfEventsWithRealServer

	| eventData |

	self setUpClientForRealServer. 
	eventData := client fetchEtagsOfEventsFrom: self calendarUrlOnRealServer.
	
	self assert: 2 equals: eventData size.
	
	self assert: 	'/DAV/calendars/968cdb81-71bc-45a1-af82-4ff016ca48b6/',
				'20010712T182145Z-123401@example.com.ics'
		equals: (eventData first at: #urlLocalPart).
	self assert: '"54185"' equals: (eventData first at: #getetag).
		
	self assert: 	'/DAV/calendars/968cdb81-71bc-45a1-af82-4ff016ca48b6/',
				'20010712T182145Z-126701@example.com.ics'
		equals: (eventData second at: #urlLocalPart).
	self assert: '"54189"' equals: (eventData second at: #getetag)
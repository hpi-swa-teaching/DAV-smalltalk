tests - fetching
testFetchEtagsOfEventsForEventUrlsWithRealServer

	| eventData |

	self setUpClientForRealServer. 
	eventData := client fetchEtagsOfEventsFrom: self calendarUrlOnRealServer
							for: self eventUrlsOnRealServer.
	
	self assert: 1 equals: eventData size.
	
	self assert: 	'/DAV/calendars/968cdb81-71bc-45a1-af82-4ff016ca48b6/',
				'20010712T182145Z-123401@example.com.ics'
		equals: ((eventData at: 1) at: #urlLocalPart).
	self assert: '"54185"' equals: ((eventData at: 1) at: #'d:getetag')
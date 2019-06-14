tests - fetching
testFetchEtagsOfEvents

	| url data |

	url := 'https://www.caldavserver.com/DAV/calendars/968cdb81-71bc-45a1-af82-4ff016ca48b6/'. 
	data := client fetchEtagsOfEventsFrom: url.
	
	
	self assert: 2 equals: data size.
	
	self assert: '/DAV/calendars/968cdb81-71bc-45a1-af82-4ff016ca48b6/20010712T182145Z-123401@example.com.ics'
		equals: ((data at: 1) at: #urlLocalPart).
	self assert: '"54185"' equals: ((data at: 1) at: #'d:getetag').
		
	self assert: '/DAV/calendars/968cdb81-71bc-45a1-af82-4ff016ca48b6/20010712T182145Z-126701@example.com.ics'
		equals: ((data at: 2) at: #urlLocalPart).
	self assert: '"54189"' equals: ((data at: 2) at: #'d:getetag').
	
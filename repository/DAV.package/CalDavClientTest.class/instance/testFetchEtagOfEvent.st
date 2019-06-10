tests - fetching
testFetchEtagOfEvent

	| href data |

	href := 'https://www.caldavserver.com/DAV/calendars/968cdb81-71bc-45a1-af82-4ff016ca48b6/20010712T182145Z-123401@example.com.ics'.
	data := client fetchEtagOfEventFrom: href.
	
	self assert: '"54185"'equals: data.
	
	href := 'https://www.caldavserver.com/DAV/calendars/968cdb81-71bc-45a1-af82-4ff016ca48b6/20010712T182145Z-126701@example.com.ics'.
	data := client fetchEtagOfEventFrom: href.
	
	self assert: '"54189"'equals: data.
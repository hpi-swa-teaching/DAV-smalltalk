tests - fetching
testFetchEventsData

	| url data |

	url := 'https://www.caldavserver.com/DAV/calendars/968cdb81-71bc-45a1-af82-4ff016ca48b6/'. 
	data := client fetchEventsDataFrom: url.
	
	self assert: 2 equals: data size.
	
	self assert: 'text/calendar' equals: ((data at: 1) at: #'d:getcontenttype').
	self assert: 'Sun, 09 Jun 2019 10:14:57 GMT' equals: ((data at: 1) at: #'d:getlastmodified').
		
	self assert: 'text/calendar' equals: ((data at: 2) at: #'d:getcontenttype').
	self assert: 'Sun, 09 Jun 2019 10:23:16 GMT' equals: ((data at: 2) at: #'d:getlastmodified').
	
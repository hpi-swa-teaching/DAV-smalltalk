tests - updating
testUpdateCalendar
	
	
	self calendar updateCalendarWithData: self updateCalendarInformation.
	
	self assert: 'calendarName' equals: calendar calendarName. 
	self assert: 'cTag' equals: calendar ctag.
	self assert: 'syncToken' equals: calendar syncToken.
	self assert: 'contentType' equals: calendar contentType
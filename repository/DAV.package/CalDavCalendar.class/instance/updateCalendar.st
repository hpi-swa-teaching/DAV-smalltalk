updating
updateCalendar
	
	| updateInformation |
	
	updateInformation := self client fetchCalendarDataFrom: self url.
	self calendarName: (updateInformation at: #'d:displayname'). 
	self ctag: (updateInformation at: #'cs:getctag'). 
	self syncToken: (updateInformation at: #'d:sync-token').
	self contentType: (updateInformation at: #'d:getcontenttype').
	self calendarColor: (Color fromString: (updateInformation at: #'ical:calendar-color' ifAbsent: ['#00000000'])).
	
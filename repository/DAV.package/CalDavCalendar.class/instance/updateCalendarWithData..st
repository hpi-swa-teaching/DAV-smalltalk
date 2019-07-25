updating
updateCalendarWithData: updateInformation
	
	self calendarName: (updateInformation at: #displayname). 
	self ctag: (updateInformation at: #getctag). 
	self syncToken: (updateInformation at: #'sync-token').
	self contentType: (updateInformation at: #getcontenttype).
	self calendarColor: (Color fromString: (updateInformation at: #'calendar-color' ifAbsent: ['#00000000']))
	
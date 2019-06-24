updating
updateCalendar
	
	self serverData: (self client fetchCalendarDataFrom: self url).
	self calendarName: (self serverData at: #'d:displayname'). 
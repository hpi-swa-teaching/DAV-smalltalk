updating
updateCalendar
	
	| updateInformation |
	
	updateInformation := self client fetchCalendarDataFrom: self url.
	self
		calendarName: (updateInformation at: #'d:displayname');
		ctag: (updateInformation at: #'cs:getctag');
		syncToken: (updateInformation at: #'d:sync-token');
		contentType: (updateInformation at: #'d:getcontenttype');
		calendarColor:
			(Color fromString: (updateInformation at: #'ical:calendar-color'
				ifAbsent: [self defaultColor]))
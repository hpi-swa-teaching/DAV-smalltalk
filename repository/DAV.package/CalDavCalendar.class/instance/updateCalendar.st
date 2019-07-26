updating
updateCalendar
	
	| updateInformation |
	
	updateInformation := self client fetchCalendarDataFrom: self url.
	self
		calendarName: (updateInformation at: #'displayname');
		ctag: (updateInformation at: #'getctag');
		syncToken: (updateInformation at: #'sync-token');
		contentType: (updateInformation at: #'getcontenttype');
		calendarColor:
			(Color fromString: (updateInformation at: #'icalendar-color'
				ifAbsent: [self defaultColor asString]))
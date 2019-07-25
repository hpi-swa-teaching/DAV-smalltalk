updating
updateCalendar
	
	| updateInformation |
	
	updateInformation := self client fetchCalendarDataFrom: self url.
	self updateCalendarWithData: updateInformation
	
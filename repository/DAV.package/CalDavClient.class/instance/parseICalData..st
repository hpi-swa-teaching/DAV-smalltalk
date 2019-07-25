parsing - helpers
parseICalData: responseContent

	| iCalCalendar |
	
	iCalCalendar := ICCalendarHandParser parseCalendarString: responseContent.
	
	^ iCalCalendar
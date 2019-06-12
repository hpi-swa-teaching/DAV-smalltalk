requests
parseICalData: responseContent

	| iCalCalendar |
	iCalCalendar := ICCalendarHandParser parseCalendarString: responseContent.
	^ iCalCalendar 
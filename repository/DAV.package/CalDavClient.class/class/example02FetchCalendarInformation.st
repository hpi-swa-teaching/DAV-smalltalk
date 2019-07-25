usage
example02FetchCalendarInformation

	| calendarUrl client calendarData |
	"client must be already set up"
	
	calendarUrl := 'https://calendarUrl'.
	"full url of calendar server"
	
	calendarData := client fetchCalendarDataFrom: calendarUrl.	
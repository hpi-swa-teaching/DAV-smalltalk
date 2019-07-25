usage
example01SetUpCalendar

	| calendar calendarUrl |
	
	calendarUrl := 'https://calendarUrl'.
	"full url of calendar server"
	
	calendar := CalDavCalendar new url: calendarUrl asUrl.
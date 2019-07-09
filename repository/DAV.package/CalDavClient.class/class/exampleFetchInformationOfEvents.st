usage
exampleFetchInformationOfEvents

	| calendarUrl client eventsData etagsOfAllEvents eventsICalData |
	"client must be already set up"
	
	calendarUrl := 'https://calendarUrl'.
	"full url of calendar server"
	
	eventsData := client fetchEventsDataFrom: calendarUrl.
	etagsOfAllEvents := client fetchEtagsOfEventsFrom: calendarUrl.
	eventsICalData := client fetchEventsICalDataFrom: calendarUrl.	
usage
exampleFetchInformationOfEvents

	| calendarUrl client eventsData etagsOfAllEvents|
	"client must be already set up"
	
	calendarUrl := 'https://calendarUrl'.
	"full url of calendar server"
	
	eventsData := client fetchEventsDataFrom: calendarUrl.
	etagsOfAllEvents := client fetchEtagsOfEventsFrom: calendarUrl.
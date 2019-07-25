usage
example03FetchInformationOfEvent

	| eventUrl client eventData eventICalData etagOfEvent|
	"client must be already set up"
	
	eventUrl := 'https://authority/schemeSpecificPart'.
	"full url of an event: authority of the calendar server + local part (href)"
	
	eventData := client fetchEventDataFrom: eventUrl.
	eventICalData := client fetchEventICalDataFrom: eventUrl.
	etagOfEvent := client fetchEtagOfEventFrom: eventUrl.
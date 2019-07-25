examples
example05FetchInformationOfSpecificEvents

	| calendarUrl client href1 href2 hrefArray 
	specificEventsData etagsOfSpecificEvents specificEventsICalData|
	"client must be already set up"
	
	calendarUrl := 'https://calendarUrl'.
	"full url of calendar server"
	
	href1 := '/schemeSpecificPart'.
	href2 := '/schemeSpecificPart'.
	"only local part of the url of the event (href) without authority of the calendar or https://"
	
	hrefArray := Array with: href1 with: href2.
	
	specificEventsData := client fetchEventsDataFrom: calendarUrl for: hrefArray.
	etagsOfSpecificEvents := client fetchEtagsOfEventsFrom: calendarUrl for: hrefArray.
	specificEventsICalData := client fetchEventsICalDataFrom: calendarUrl for: hrefArray

usage
exampleUpdateEvent	

	| event |
	"event must be already assigned to the calendar object"
	"an Event must already have an URL (authority of the server + local part (href))"
	
	event update. 		"pull last version of the event from the server and assign to the event object"
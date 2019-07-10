usage
exampleSaveEvent	

	| event |
	"event must be already assigned to the calendar object"
	"an Event must already have an URL (authority of the server + local part (href))"
	
	event save. 		"save only if anEvent wasn't changed on the server since pulling" 	
	event forceSave.  "save anyway"
examples
example02Save: anEvent

	"event must be already assigned to the calendar object"
	"an Event must already have an URL (authority of the server + local part (href))"
	
	anEvent save. 		"save only if anEvent wasn't changed on the server since pulling" 	
	anEvent forceSave  "save anyway"
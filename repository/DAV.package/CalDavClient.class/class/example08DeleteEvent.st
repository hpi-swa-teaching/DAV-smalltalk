usage
example08DeleteEvent

	| client anEvent |
	"client must be already set up"
	"an Event must already have an URL (authority of the server + local part (href))"
	
	client deleteEvent: anEvent. 		   "delete only if anEvent is the same version as on the server" 	
	client forceDeleteEvent: anEvent.  "delete anyway"
	
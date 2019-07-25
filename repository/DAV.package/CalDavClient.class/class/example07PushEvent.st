examples
example07PushEvent

	| client anEvent |
	"client must be already set up"
	"an Event must already have an URL (authority of the server + local part (href))"
	
	client pushEvent: anEvent. 		"push only if anEvent wasn't changed on the server since pulling" 	
	client forcePushEvent: anEvent  "push anyway"
	
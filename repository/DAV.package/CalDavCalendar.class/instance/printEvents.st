accessing
printEvents

	| ICevent |
	self eventsDictionary do: [:event | 
		ICevent := event serverData. 
		Transcript show: 
			( 'name: ', ICevent summary , 
			' start: ',  ICevent start, 
			' end: ', ICevent end, Character cr ) ]
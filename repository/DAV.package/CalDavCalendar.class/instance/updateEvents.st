updating
updateEvents
	
	| etagsOfEvents |
	etagsOfEvents := self client fetchEtagsOfEventsFrom: self url.
	
	etagsOfEvents do: [:rawEventData | 
		rawEventData at: #url put: ('https://', self url authority , (rawEventData at: #urlLocalPart)) asURI].
	
	self 
		removeDeletedEvents: etagsOfEvents;
		updateOrAddEvents: etagsOfEvents.
		
	
	
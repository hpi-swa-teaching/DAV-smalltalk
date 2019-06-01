updating
updateEvents
	
	| updateInformation eventsInformation |
	updateInformation := self client fetchEventsDataFrom: self url.
	
	updateInformation do: [:rawEventData | 
		rawEventData at: #url put: ('https://', self url authority , (rawEventData at: #urlLocalPart)) asURI].
	
	eventsInformation := updateInformation copyFrom: 2 to: updateInformation size.
	
	self 
		removeDeletedEvents: eventsInformation;
		updateOrAddEvents: eventsInformation.
	
	
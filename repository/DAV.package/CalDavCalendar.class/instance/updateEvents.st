updating
updateEvents
	
	| updateInformation |
	updateInformation := self client fetchEtagsOfEventsFrom: self url.
	
	updateInformation do: [:rawEventData | 
		rawEventData at: #url put: ('https://', self url authority , (rawEventData at: #urlLocalPart)) asURI].
	
	"eventsInformation := updateInformation copyFrom: 2 to: updateInformation size."
	
	self 
		removeDeletedEvents: updateInformation;
		updateOrAddEvents: updateInformation.
		
	"self 
		removeDeletedEvents: eventsInformation;
		updateOrAddEvents: eventsInformation."
	
	
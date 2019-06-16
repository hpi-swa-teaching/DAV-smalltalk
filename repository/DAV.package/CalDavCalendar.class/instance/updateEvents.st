updating
updateEvents
	
	| updateInformation |
	updateInformation := self client fetchEtagsOfEventsFrom: self url.
	
	updateInformation do: [:rawEventData | 
		rawEventData at: #url put: ('https://', self url authority , (rawEventData at: #urlLocalPart)) asURI].
	
	self 
		removeDeletedEvents: updateInformation;
		updateOrAddEvents: updateInformation.
		
	
	
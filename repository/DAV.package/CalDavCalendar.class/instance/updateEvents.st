updating
updateEvents
	
	| etagsOfEvents |
	
	etagsOfEvents := self client fetchEtagsOfEventsFrom: self url.
	
	etagsOfEvents do: [:rawEventData | 
		rawEventData at: #url put:	(self buildUrlFrom: (rawEventData at: #urlLocalPart))].
	
	self 
		removeDeletedEvents: etagsOfEvents;
		updateOrAddEvents: etagsOfEvents
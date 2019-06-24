updating
updateOrAddEvents: etagsOfEvents

	| urlsToFetch iCalData |
	
	urlsToFetch := self collectHrefsToFetch: etagsOfEvents.	
	iCalData := self client fetchEventsICalDataFrom: self url for: urlsToFetch.
	self updateOrCreateEventsFrom: iCalData

requests
saveEvent: anIcalObject to: anUrl at: etag

	| response serializedEvent newEtag |
	self assumesAuthorization.
	
	serializedEvent := (ICCalendarExporter calendar: anIcalObject) export export dataStream contents.
	response := self sendPutTo: anUrl theRequest: serializedEvent withHeader: {
		'Content-Type' -> 'text/calendar'.
		'If-Match' -> etag asString.
	}.
	
	response isSuccess ifFalse: [Exception signal].
	
	newEtag := self fetchEtagOfEventFrom: anUrl.
	
	^ newEtag
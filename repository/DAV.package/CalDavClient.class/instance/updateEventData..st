fetching
updateEventData: anEvent

	| iCal response query payload |
	
	self assumesAuthorization.
	
	iCal := self serializeEvent: anEvent.
	payload := self handleSerializedEventData: iCal.
	query := self putEventDataQueryWithPayload: payload ifMatch: anEvent etag. 
	response := self sendRequest: query to: anEvent url.
	
	^ response content
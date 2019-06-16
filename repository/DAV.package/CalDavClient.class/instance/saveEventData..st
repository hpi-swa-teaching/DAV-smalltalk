fetching
saveEventData: anEvent

	| response query payload iCal |
	
	self assumesAuthorization.
	
	iCal := self serializeEvent: anEvent.
	payload := self handleSerializedEventData: iCal.
	query := self putEventDataQueryWithPayload: payload withSqueakLineEndings. 
	response := self sendRequest: query to: anEvent url.
	
	^ response content
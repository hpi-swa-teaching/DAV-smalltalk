queries
putEventDataQueryWithPayload: aPayloadString ifMatch: anEtagString

	^ (self putEventDataQueryWithPayload: aPayloadString)
		headerAt: 'If-Match' put: anEtagString
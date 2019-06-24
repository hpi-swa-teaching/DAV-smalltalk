queries
putEventDataQueryWithPayload: aString 

	^ (WebRequest new)
		method: 'PUT';
		content: aString
queries
putEventDataQueryWithPayload: aPayload ifMatch: aData 

	^ (self putEventDataQueryWithPayload: aPayload)
		headerAt: 'If-Match' put: aData
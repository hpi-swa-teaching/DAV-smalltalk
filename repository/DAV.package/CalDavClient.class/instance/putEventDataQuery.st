queries
putEventDataQuery

	^ (WebRequest new)
		method: 'PUT';
		headerAt: 'Content-Type' put: 'text/calendar; charset=utf-8'
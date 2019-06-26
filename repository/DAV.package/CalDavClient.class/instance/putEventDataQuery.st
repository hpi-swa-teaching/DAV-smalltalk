queries
putEventDataQuery

	^ (DAVPutQuery new)
		headerAt: 'Content-Type' put: 'text/calendar; charset=utf-8'
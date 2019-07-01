queries
fetchEventICalDataQuery

	^ DAVGetQuery new
		headerAt: 'Depth' put: '1'
queries
fetchEtagsOfEventsQueryFor: hrefArray

	^ self fetchEtagOfEventQuery 
		objectURLs: hrefArray

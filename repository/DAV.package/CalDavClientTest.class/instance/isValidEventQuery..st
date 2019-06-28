helpers
isValidEventQuery: aDAVQuery

	^ 	(aDAVQuery content matchesRegex: self regexForFetchEventsDataQuery)
		or:
		(aDAVQuery content matchesRegex: self regexForFetchEtagOfEventQuery)
		or:
		(aDAVQuery content matchesRegex: self regexForFetchEtagsOfEventsQuery)
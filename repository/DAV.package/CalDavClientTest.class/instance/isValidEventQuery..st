helpers - requests
isValidEventQuery: aDAVQuery

	^ 	(aDAVQuery content matchesRegex: self regexForFetchEventsDataQuery)
		or:
		(aDAVQuery content matchesRegex: self regexForFetchEtagOfEventQuery)
		or:
		(aDAVQuery content matchesRegex: self regexForFetchEtagsOfEventsQuery)
		or:
		(aDAVQuery content matchesRegex: self regexForFetchEventDataQuery)
		or:
		(aDAVQuery content matchesRegex: self regexForFetchEventDataQueryWithHrefs)

		
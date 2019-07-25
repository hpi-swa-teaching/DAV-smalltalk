helpers - requests
isValidCalendarQuery: aDAVQuery

	^ 	(aDAVQuery content matchesRegex: self regexForFetchCalendarQuery)
		or:
		(aDAVQuery content matchesRegex: self regexForFetchEventsDataFromFor)
		or:
		(aDAVQuery content matchesRegex: self regexForFetchEventDataQueryWithHrefs)
		or:
		(aDAVQuery content matchesRegex: self regexForFetchEventICalDataQueryWithHrefs)
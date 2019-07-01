helpers
isValidCalendarQuery: aDAVQuery

	^ 	(aDAVQuery content matchesRegex: self regexForFetchCalendarQuery)
		or:
		(aDAVQuery content matchesRegex: self regexForFetchEtagsOfEventsQueryWithHrefs)
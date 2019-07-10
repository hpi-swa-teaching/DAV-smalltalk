usage
exampleReportQueryCreationUser: aUsername password: aPassword calendarUrl: anUrl

	| client query response |

	client := WebDAVClient new. 
	client username: aUsername. 
	client password: aPassword.
	client initializeFromUrl: anUrl.

	query := CalDAVReportQuery
		calendarQueryFromUrl: anUrl
		namespaces: #((c 'urn:ietf:params:xml:ns:caldav'))
		properties: #('D:getetag' 'c:calendar-data')
		filters: #(('c:comp-filter' #(('name' 'VCALENDAR')))).
		
	response := client sendRequest: query.
	^response content
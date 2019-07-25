examples
example07ReportQueryUser: aUsername password: aPassword calendarUrl: anUrl

	| client response |

	client := WebDAVClient new.
	client username: aUsername. 
	client password: aPassword.
	client initializeFromUrl: anUrl.

	response := client davReport: anUrl
		namespaces: #((c 'urn:ietf:params:xml:ns:caldav'))
		properties: #('D:getetag' 'c:calendar-data')
		queryType: 'c:calendar-query'
		filters: #(('c:comp-filter' #(('name' 'VCALENDAR')) )).

	^ response content
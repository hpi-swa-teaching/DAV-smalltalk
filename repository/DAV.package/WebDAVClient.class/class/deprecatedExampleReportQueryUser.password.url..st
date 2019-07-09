documentation
deprecatedExampleReportQueryUser: aUsername password: aPassword url: aCalendarUrl
"EmptyPropfindQuery returns eTags of all Calendar Events"

	| client url response |
	client := WebDAVClient new. 
	client username: aUsername. 
	client password: aPassword.   
	url := aCalendarUrl. 

	response := client davReport: url
					namespaces: #((c 'urn:ietf:params:xml:ns:caldav'))
					properties: #('d:getetag' 'd:getlastmodified'
						'd:getcontentlength''d:getcontenttype')
					queryType: 'c:calendar-query'
					filters: #(('c:comp-filter' #(('name' 'VCALENDAR')))).

	^ response content
tests - xml
testDAVReportMultigetXml

	self query properties: #('getetag' 'calendar-data').
	self query type: 'c:calendar-multiget'.
	self query objectURLs:#('/calendars/user/home/132456762153245.ics' 		'/calendars/user/home/13245676123245.ics' ).
	
	self assert: (self query content matchesRegex: 
		'<\?xml  version="1.0" \?>\s*<c\:calendar-multiget xmlns\:d="DAV\:">\s*<d\:prop>', 		'\s*<getetag/>\s*<calendar-data/>\s*</d\:prop>\s*', 		'<d\:href>/calendars/user/home/132456762153245.ics</d\:href>\s*',
		'<d\:href>/calendars/user/home/13245676123245.ics</d\:href>\s*',
		'</c\:calendar-multiget>')
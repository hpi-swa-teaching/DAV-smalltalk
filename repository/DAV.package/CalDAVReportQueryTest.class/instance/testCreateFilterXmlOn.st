tests - xml
testCreateFilterXmlOn

	| filter1 filter2 |
	
	filter1 := CalDAVFilter type: 'c:comp-filter' attributes: #(('name' 'VCALENDAR')).
	filter2 := CalDAVFilter type: 'c:time-range' attributes: 
		#(('start' '20160321T140000')('end' '20160322T140000')).
		
	self query addFilters: {filter1. filter2}.
	self assert: (self query body matchesRegex:
		'<\?xml  version="1.0" \?>\s*<c\:calendar-query xmlns\:d="DAV\:">\s*<c\:filter>\s*',
		'<c\:comp-filter name="VCALENDAR">\s*<c\:time-range end="20160322T140000"',
		'\s*start="20160321T140000"/>\s*</c\:comp-filter>\s*</c\:filter>',
		'</c\:calendar-query>')
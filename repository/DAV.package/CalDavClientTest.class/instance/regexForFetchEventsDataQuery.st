helpers - requests
regexForFetchEventsDataQuery

	^	'<\?xml  version="1.0" \?>\s*',
		'<c\:calendar-query xmlns\:c="urn\:ietf\:params\:xml\:ns\:caldav" xmlns\:d="DAV\:">\s*', 
			'<d\:prop>\s*<d\:getetag/>\s*<d\:getlastmodified/>\s*',
				'<d\:getcontentlength/>\s*<d\:getcontenttype/>\s*</d\:prop>\s*',
			'<c\:filter>\s*<c\:comp-filter name="VCALENDAR"/>\s*</c\:filter>\s*',
		'</c\:calendar-query>'
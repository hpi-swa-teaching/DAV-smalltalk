helpers - requests
regexForFetchCalendarQuery

	^	'<\?xml  version="1.0" \?>\s*',
		'<d\:propfind xmlns\:caldav="urn\:ietf\:params\:xml\:ns\:caldav" ', 		'xmlns\:cs="http\://calendarserver.org/ns/" xmlns\:d="DAV\:">\s*',
			'<d\:prop>\s*', 
				'<cs\:getctag/>\s*<d\:displayname/>\s*<d\:sync-token/>\s*',
				'<d\:getcontenttype/>\s*<caldav\:calendar-description/>\s*',
			'</d\:prop>\s*',
		'</d\:propfind>'
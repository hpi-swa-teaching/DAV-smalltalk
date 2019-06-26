helpers
regexForFetchEtagsOfEventsQueryWithHrefs

	^	'<\?xml  version="1.0" \?>\s*',
		'<c\:calendar-multiget ',
			'xmlns\:c="urn\:ietf\:params\:xml\:ns\:caldav" xmlns\:d="DAV\:">',
				'<d\:prop>\s*<d\:getetag/>\s*</d\:prop>\s*',
				'<d\:href>.*</d\:href>\s*',
		'</c\:calendar-multiget>\s*'
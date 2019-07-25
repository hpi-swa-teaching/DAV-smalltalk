helpers - requests
regexForFetchEventDataQueryWithHrefs

	^	'<\?xml  version="1.0" \?>\s*',
		'<c\:calendar-multiget ',
			'xmlns\:c="urn\:ietf\:params\:xml\:ns\:caldav" xmlns\:d="DAV\:">\s*',
				'<d\:prop>\s*<d\:getetag/>\s*<d\:getlastmodified/>\s*',
				'<d\:getcontentlength/>\s* <d\:getcontenttype/>\s*</d\:prop>\s*',
				'<d\:href>.*</d\:href>\s*',
		'</c\:calendar-multiget>'
helpers - requests
regexForFetchEventDataQuery

	^	'<\?xml  version="1.0" \?>\s*',
		'<d\:propfind xmlns\:d="DAV\:">\s*',
			'<d\:prop>\s*',
				'<d\:getetag/>\s*<d\:getlastmodified/>\s*',
				'<d\:getcontentlength/>\s*<d\:getcontenttype/>\s*',
			'</d\:prop>\s*</d\:propfind>'
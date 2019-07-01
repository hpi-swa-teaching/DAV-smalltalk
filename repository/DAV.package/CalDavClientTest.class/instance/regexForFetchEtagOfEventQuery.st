helpers
regexForFetchEtagOfEventQuery

	^	 '<\?xml  version="1.0" \?>\s*',
			'<d\:propfind xmlns\:d="DAV\:">\s*',
				'<d\:prop>\s*<d\:getetag/>\s*</d\:prop>\s*',
			'</d\:propfind>'
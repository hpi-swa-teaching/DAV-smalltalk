tests - instanceCreation
testEmptyPropfindQuery
	
	self query: DAVPropfindQuery empty.
	self assert: (self query body matchesRegex:
		'<\?xml  version="1.0" \?>(\s.*)?<d\:propfind xmlns\:d="DAV\:">(\s.*)?</d\:propfind>').
	self assert: self query method equals: 'PROPFIND'.
tests - xml
testCreateXmlBodyProperties
		
	self query properties: #('d:displayname').
	self assert: (self query content matchesRegex: 
		'<\?xml  version="1\.0" \?>\s*<d\:propfind xmlns\:d="DAV\:">\s*',
		'<d\:prop>\s*<d\:displayname/>\s*</d\:prop>\s*</d\:propfind>')
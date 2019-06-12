tests - xml
testCreateXmlBody

	self assert: (self query body matchesRegex: 
		'<\?xml  version="1\.0" \?>\s*<d\:propfind xmlns\:d="DAV\:">\s*</d\:propfind>')
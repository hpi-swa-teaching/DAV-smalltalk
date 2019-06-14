tests - xml
testCreateXmlBodyNamespaces
		
	self query namespaces: #((cs 'https://www.caldavserver.com/ns')).
	self assert: (self query body matchesRegex:
		'<\?xml  version="1\.0" \?>\s*<d\:propfind xmlns\:cs=',
		'"https\://www\.caldavserver\.com/ns" xmlns\:d="DAV\:">\s*</d\:propfind>')
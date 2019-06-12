tests - xml
testCreatePropertiesXml

	| xmlWriter |
	
	self query properties: #('D:displayname' 'CS:getctag').
	xmlWriter := XMLWriter on: (WriteStream on: '').
	self query createPropertiesXmlOn: xmlWriter.
	self assert: (xmlWriter stream contents matchesRegex: 		'<d\:prop>\s*<d\:displayname/>\s*<cs\:getctag/>\s*</d\:prop>')
tests - xml
testCreateEmptyPropertiesXml

	|  xmlWriter |
	
	xmlWriter := XMLWriter on: (WriteStream on: '').
	self query createPropertiesXmlOn: xmlWriter.
	self assert: '' equals: (xmlWriter stream contents)
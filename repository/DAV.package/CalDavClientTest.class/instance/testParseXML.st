tests - parsing
testParseXML

	self assert: #'d:multistatus' equals:
		(self client parseXML: self calendarXml) elementsAndContents first name

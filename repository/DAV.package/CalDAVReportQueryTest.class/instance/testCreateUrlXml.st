tests - xml
testCreateUrlXml

	| xmlWriter |
	
	xmlWriter := XMLWriter on: (WriteStream on: '').
	self query objectURLs: #('/calendars/user/home/132456762153245.ics').
	self query createUrlXmlOn: xmlWriter.

	self assert: '<d:href>/calendars/user/home/132456762153245.ics</d:href>' equals: 		xmlWriter stream contents
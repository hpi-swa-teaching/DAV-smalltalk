tests - xml
testWriteQuerySpecificContent

	| xmlWriter |
	
	xmlWriter := XMLWriter on: (WriteStream on: '').
	self query createQuerySpecificXmlOn: xmlWriter.
	self assert: xmlWriter stream contents isEmpty.
queryBuilding
createXmlBody

	| xmlWriter |
	
	xmlWriter := XMLWriter on: (WriteStream on: '').
	xmlWriter xmlDeclaration: '1.0'.
	self
		createQuerySpecificXmlOn: xmlWriter;
		body: xmlWriter flush stream contents;	
		headerAt: 'Content-Length' put: self size
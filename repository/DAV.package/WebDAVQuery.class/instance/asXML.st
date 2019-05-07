queryBuilding
asXML

	| xmlWriter |
	
	xmlWriter := XMLWriter on: (WriteStream on: '').
		
	xmlWriter xmlDeclaration: '1.0'.

	self writeQuerySpecificContentOn: xmlWriter.
		
	^ xmlWriter flush stream contents
tests - xml
testWriteQuerySpecificContent

	| xmlWriter |
	
	xmlWriter := XMLWriter on: (WriteStream on: '').

	query := DAVPropfindQuery new.
	query createQuerySpecificXmlOn: xmlWriter.
	self assert: (xmlWriter flush stream contents) =  '
<d:propfind xmlns:d="DAV:"></d:propfind>'.
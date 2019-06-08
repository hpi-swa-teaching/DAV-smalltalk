tests - xml
testWriteQuerySpecificContent

	| xmlWriter |
	
	xmlWriter := XMLWriter on: (WriteStream on: '').

	query := DAVPropfindQuery new.
	query createQuerySpecificXmlOn: xmlWriter.
	self assert: (xmlWriter flush stream contents) =  '
<D:propfind xmlns:D="DAV:"><d:prop></d:prop></D:propfind>'.
tests - xml
testWriteQuerySpecificContent

	| xmlWriter |
	
	xmlWriter := XMLWriter on: (WriteStream on: '').

	query := DAVPropFindQuery new.
	query createQuerySpecificXmlOn: xmlWriter.
	self assert: (xmlWriter flush stream contents) =  '
<D:propfind xmlns:D="DAV:"><D:prop></D:prop></D:propfind>'.
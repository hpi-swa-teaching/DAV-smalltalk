tests - xml
testWriteQuerySpecificContent

	| xmlWriter |
	
	xmlWriter := XMLWriter on: (WriteStream on: '').

	self query createQuerySpecificXmlOn: xmlWriter.
	self assert: ((xmlWriter stream contents)
		matchesRegex: '\s*<d\:propfind xmlns\:d="DAV\:">\s*</d\:propfind>\s*')
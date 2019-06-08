xml
printStartTagOn: aXMLWriter

	aXMLWriter
		startElement: self type attributeList: self attributesDictionary;
		endTag.
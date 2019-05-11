accessing
printWithEmpyLastTagOn: aXMLWriter

	aXMLWriter
		startElement: self type attributeList: self attributesDictionary;
		endEmptyTag: self type.
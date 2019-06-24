parsing
parseXML: string

	^ XMLDOMParser parseDocumentFrom: string readStream.
	
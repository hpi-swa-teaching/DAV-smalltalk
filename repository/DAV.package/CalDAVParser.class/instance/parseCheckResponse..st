parsing
parseCheckResponse: aResponse

	|  xmlDocument responses  |
	
	xmlDocument := XMLDOMParser parseDocumentFrom: (aResponse readStream).
	responses := OrderedCollection new.	
	
	xmlDocument root tagsNamed: #d:response do: [:elem |
		responses add: (self parseCheckElem: elem)			
		].
	
	^ responses
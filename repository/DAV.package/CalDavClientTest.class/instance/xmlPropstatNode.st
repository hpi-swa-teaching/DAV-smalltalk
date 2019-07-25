helpers
xmlPropstatNode

	^ (XMLElement named: #'d:propstat')
		addElement: ((XMLElement named: #'d:status') addContent: 'HTTP/1.1 200 OK' asText);
		addElement: self xmlPropNode
helpers
xmlPropstatFailureNode

	^ (XMLElement named: #'d:propstat')
		addElement: ((XMLElement named: #'d:status')
			addContent: 'HTTP/1.1 400 BAD REQUEST' asText)
helpers - parsing
xmlPropstatNodeWithStatus: aString andProperties: anXmlPropNode

	^ (XMLElement named: #'d:propstat')
		addElement: ((XMLElement named: #'d:status') addContent: aString asText);
		addElement: anXmlPropNode
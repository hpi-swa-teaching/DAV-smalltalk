helpers - parsing
xmlEventFailureNode
		
	^ (XMLElement named: 'd:response') 
		addElement:
			(self xmlPropstatNodeWithStatus: 'HTTP/1.1 400 BAD REQUEST'
				andProperties: self xmlEventPropNode)
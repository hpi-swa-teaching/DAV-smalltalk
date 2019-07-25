helpers - parsing
xmlCalendarNode
		
	^ (XMLElement named: 'd:response') 
		addElement: (self xmlPropstatNodeWithStatus: 'HTTP/1.1 200 OK'
			andProperties: self xmlCalendarPropNode)
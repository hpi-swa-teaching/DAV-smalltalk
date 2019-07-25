helpers
xmlEventFailureNode
		
	^ (XMLElement named: 'd:response') 
		addElement: self xmlPropstatFailureNode
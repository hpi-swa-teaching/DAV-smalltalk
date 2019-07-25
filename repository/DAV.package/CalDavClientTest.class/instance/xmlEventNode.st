helpers
xmlEventNode
		
	^ (XMLElement named: 'd:response') 
		addElement: self xmlPropstatNode;
		addElement: self xmlHrefNode
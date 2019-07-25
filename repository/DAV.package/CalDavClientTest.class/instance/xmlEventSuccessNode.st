helpers
xmlEventSuccessNode
		
	^ (XMLElement named: 'd:response') 
		addElement: self xmlPropstatSuccesNode;
		addElement: self xmlHrefNode
low parsing
parseProperty: aProperty from: aXMLElem
	
	| elem |
	
	elem := aXMLElem firstTagNamed: aProperty.
	elem ifNotNil: [^ elem characterData].
	 
	^ nil
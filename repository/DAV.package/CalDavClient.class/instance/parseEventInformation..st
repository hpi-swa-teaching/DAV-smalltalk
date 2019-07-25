parsing
parseEventInformation: anEventNode

	| properties propertyStatus resultProperties |
	propertyStatus := anEventNode firstTagNamed: #'d:propstat'.
	(propertyStatus firstTagNamed: #'d:status') contents first string = 'HTTP/1.1 200 OK'
		ifFalse: [self throwEventParsingExecption].
		
	properties := (propertyStatus firstTagNamed: #'d:prop') elements.
	
	resultProperties := Dictionary newFrom: {#urlLocalPart -> (anEventNode firstTagNamed: #'d:href') contents first string}.
	properties 
		select: [:property | property contents notEmpty]
		thenDo: [:property |
			resultProperties at: property name asSymbol put: property contents first string ].
	
	^ resultProperties
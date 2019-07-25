parsing
parseEventInformation: anEventNode

	| properties resultProperties |
	
	self checkStatusCode: anEventNode.
		
	properties := (anEventNode firstTagNamed: #'d:prop') elements.
	resultProperties := Dictionary newFrom: {#urlLocalPart -> (anEventNode firstTagNamed: #'d:href') contents first string}.
	properties 
		select: [:property | property contents notEmpty]
		thenDo: [:property |
			resultProperties at: (self tagWithOutNamespace: property name) asSymbol put: property contents first string ].
		
	^ resultProperties
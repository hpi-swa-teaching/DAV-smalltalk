parsing - helpers
createEventPropertyLookup: aCollectionOfPropertyNodes

	| propertyLookup |

	propertyLookup := Dictionary new.

	aCollectionOfPropertyNodes 
		select: [:propertyNode | propertyNode contents notEmpty]
		thenDo: [:propertyNode |
			propertyLookup at: (self tagWithoutNamespace: propertyNode name)
				put: propertyNode contentString ].
		
	^ propertyLookup
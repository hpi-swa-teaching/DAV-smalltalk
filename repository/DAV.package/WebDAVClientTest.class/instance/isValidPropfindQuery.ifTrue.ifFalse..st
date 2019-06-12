helpers
isValidPropfindQuery: aDAVPropfindQuery ifTrue: aTrueBlock ifFalse: aFalseBlock

	(self isValidPropfindQuery: aDAVPropfindQuery)
		ifTrue: [aTrueBlock value]
		ifFalse: [aFalseBlock value]
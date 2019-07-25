helpers - requests
isValidEventQuery: aDAVQuery ifTrue: aTrueBlock ifFalse: aFalseBlock

	(self isValidEventQuery: aDAVQuery)
		ifTrue: [aTrueBlock value]
		ifFalse: [aFalseBlock value]
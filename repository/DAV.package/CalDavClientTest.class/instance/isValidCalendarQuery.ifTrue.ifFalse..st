helpers - requests
isValidCalendarQuery: aDAVQuery ifTrue: aTrueBlock ifFalse: aFalseBlock

	(self isValidCalendarQuery: aDAVQuery)
		ifTrue: [aTrueBlock value]
		ifFalse: [aFalseBlock value]
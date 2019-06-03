accessing
type: aString

	(Filter validFilterTypes includes: aString)
		ifTrue: [type := aString]
		ifFalse: [Warning signal: 'Invalid filter type!']
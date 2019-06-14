accessing
type: aString

	(self validFilterTypes includes: aString)
		ifTrue: [type := aString]
		ifFalse: [Warning signal: aString, ' is not a valid filter type!']
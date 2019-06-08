accessing
type: aString

	(self validQueryTypes includes: aString asLowercase) 
	ifTrue:
		[queryType := aString asLowercase]
	ifFalse: 
		[Warning signal: ' is not a valid query type!']
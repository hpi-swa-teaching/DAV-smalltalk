accessing
type: aString

	(self validQueryTypes includes: aString asLowercase) 
	ifTrue:
		[queryType := aString asLowercase]
	ifFalse: 
		[Warning signal: 'Invalid queryType!']
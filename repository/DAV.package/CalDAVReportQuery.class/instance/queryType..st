accessing
queryType: aString

	(self class validQueryTypes includes: aString) 
	ifTrue:
		[queryType := aString]
	ifFalse: 
		[Warning signal: 'Invalid queryType!']
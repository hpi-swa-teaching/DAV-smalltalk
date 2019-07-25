parsing
deleteMethodLineFrom: anEventString

	| newEventString |
	
	newEventString := anEventString lines reject: [:line | (line includesSubstring: 'METHOD:')].	
	^ newEventString inject: '' into:
		[:concatenatedString :line | concatenatedString, line, Character cr asString]
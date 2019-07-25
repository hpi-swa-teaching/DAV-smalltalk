parsing
deleteMethodLineFrom: anEventString

	| newEventStrings |
	
	newEventStrings := anEventString lines reject: [:line | (line includesSubstring: 'METHOD:')].	
	^ newEventStrings inject: '' into:
		[:concatenatedString :line | concatenatedString, line, Character cr asString ]
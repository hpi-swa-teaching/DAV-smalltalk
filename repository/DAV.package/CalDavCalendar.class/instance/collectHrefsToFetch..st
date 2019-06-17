updating
collectHrefsToFetch: updateInformation

	| urlsToFetch |
	
	urlsToFetch := OrderedCollection new.
	
	updateInformation do: [ :rawEventData | | url href etag eventObject |
		etag := rawEventData at: #'d:getetag'.
		url := rawEventData at: #url.
		href := rawEventData at: #urlLocalPart.
		eventObject := self eventsDictionary at: href asSymbol 
			ifAbsent: [ urlsToFetch add: url asString. nil].
			
		eventObject
		ifNotNil: [
			eventObject etag ~= etag
				ifTrue: [urlsToFetch add: url asString].
			]
		].

	^ urlsToFetch
	
updating
collectHrefsToFetch: updateInformation

	| hrefsToFetch |
	
	hrefsToFetch := OrderedCollection new.
	
	updateInformation do: [ :rawEventData | | url href etag eventObject |
		etag := rawEventData at: #getetag.
		url := rawEventData at: #url.
		href := rawEventData at: #urlLocalPart.
		
		eventObject := self eventsDictionary at: href asSymbol 
			ifAbsent: [ hrefsToFetch add: url asString. nil].
			
		eventObject
			ifNotNil: [
				eventObject etag ~= etag
					ifTrue: [hrefsToFetch add: url asString].
				]
		].

	^ hrefsToFetch
	
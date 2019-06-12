updating
updateOrAddEvents: updateInformation

	| urlsToFetch iCalData |
	
	urlsToFetch := OrderedCollection new.
	
	updateInformation do: [ :rawEventData | | url href etag eventObject |
		etag := rawEventData at: #'d:getetag'.
		url := rawEventData at: #url.
		href := rawEventData at: #urlLocalPart.
		eventObject := self events at: href asSymbol 
			ifAbsent: [ urlsToFetch add: url asString. nil].
			
		eventObject
		ifNotNil: [
			eventObject etag ~= etag
				ifTrue: [urlsToFetch add: url asString].
			]
		].
		
	iCalData := self client fetchEventsICalDataFrom: self url for: urlsToFetch.

	iCalData do: [ :elem |
		| url etag object iCalendar |
		url := self buildUrlFor: (elem at: #urlLocalPart).
		etag := elem at: #'d:getetag'.
		object := CalDavEvent newIn: self withUrl: url.
		iCalendar := elem at: #calendarData. 
		object etag: etag.
		object serverCalendar: iCalendar.
		object serverData: iCalendar events first.
		
		self events at: (elem at: #urlLocalPart) asSymbol put: object.
		].	
		
			
		

	




	"updateInformation do: [ :rawEventData | | eventObject etag |
		eventObject := self events 
			detect: [:event | event url = (rawEventData at: #url)]
			ifNone: [|newEvent|
				newEvent := CalDavEvent newIn: self withUrl: (rawEventData at: #url).
				self addEvent: newEvent.
				newEvent].
		etag := rawEventData at: #'d:getetag'.
		eventObject updateOrNotDependingOnChangeInEtag: etag]."
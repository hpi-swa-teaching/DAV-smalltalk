helpers
iCalDataOfEvents

	| iCalData dict |
	
	iCalData := OrderedCollection new.
	
	1 to: 6 do: [:i |
		dict := Dictionary new
			at: #calendarData put: (self serverCalendarWithOffset: i);
			at: #getetag put: (self etagsOfEvents at: i);
			at: #urlLocalPart put: (self hrefsOfEvents at: i);
			at: #url put: ('https://', self calendarAuthority , (self hrefsOfEvents at: i)) asURI;
			yourself.
		iCalData add: dict		  
		].
		
	^ iCalData
	
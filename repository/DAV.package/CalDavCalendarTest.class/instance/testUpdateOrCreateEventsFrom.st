tests - updating
testUpdateOrCreateEventsFrom
	
	| iCalData hrefs event iCalObjects newICal |
	
	iCalData := self iCalDataOfEvents. 
	iCalObjects := iCalData collect: [:elem | elem at: #calendarData].
	
	hrefs := OrderedCollection new.
	
	4 timesRepeat: [
		event := self calendar newEvent.
		hrefs add: event url schemeSpecificPart.
		self calendar addEvent: event.
	].
	
	newICal := self serverCalendarWithOffset: 10.
	
	iCalData add: ( Dictionary new 
		at: #calendarData put: newICal;
		at: #getetag put: 'newEtag';
		at: #urlLocalPart put: (hrefs at: 1);
		at: #url put: ('https://', self calendarAuthority , (hrefs at: 1)) asURI;
		yourself
	).
	
	self calendar updateOrCreateEventsFrom: iCalData.
	
	1 to: 6 do: [:i |	
		self assert: ((self calendar eventsDictionary at: (self hrefsOfEvents at: i) asSymbol) serverCalendar = (iCalObjects at: i))
	].

	self assert: ((self calendar eventsDictionary at: (hrefs at: 1) asSymbol) serverCalendar = newICal)
	
tests - updating
testRemoveDeletedEvents
	
	| hrefs event updateInformation |
	
	hrefs := OrderedCollection new.
	updateInformation := self updateInformation.
	
	4 timesRepeat: [
		event := self calendar newEvent.
		hrefs add: event url schemeSpecificPart.
		self calendar addEvent: event.
	].
	
	updateInformation add: ( Dictionary new 
		at: #getetag put: 'newEtag';
		at: #urlLocalPart put: (hrefs at: 1);
		at: #url put: ('https://', self calendarAuthority , (hrefs at: 1)) asURI;
		yourself
	).
	self calendar removeDeletedEvents: updateInformation.
	
	2 to: 4 do: [:i |	
		self assert: (self calendar eventsDictionary includes: (hrefs at: i) asSymbol) not.
	].

	self assert: (self calendar eventsDictionary includesKey: (hrefs at: 1) asSymbol)
tests - updating
testCollectHrefsToFetch
	
	| hrefs event hrefsToFetch updateInformation |
	
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
	hrefsToFetch := self calendar collectHrefsToFetch: updateInformation.
	
	1 to: 6 do: [:i |	
		self assert: (hrefsToFetch includes: (((self updateInformation at: i) at: #url) asString) ).
	].

	self assert: (hrefsToFetch includes: ('https://', self calendarAuthority , (hrefs at: 1)))	
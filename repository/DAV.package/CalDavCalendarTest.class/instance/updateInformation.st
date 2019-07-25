helpers
updateInformation

	| updateInformation dict |
	
	updateInformation := OrderedCollection new.
	
	1 to: 6 do: [:i |	
		dict := Dictionary new.
		dict at: #getetag put: (self etagsOfEvents at: i).
		dict at: #urlLocalPart put: (self hrefsOfEvents at: i).
		dict at: #url put: ('https://', self calendarAuthority , (self hrefsOfEvents at: i)) asURI.
		updateInformation add: dict
		].
	
	^ updateInformation
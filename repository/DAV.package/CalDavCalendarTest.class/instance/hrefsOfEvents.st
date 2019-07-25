helpers
hrefsOfEvents

	| hrefs |
	
	hrefs := OrderedCollection new.
	hrefs add: '/remote/hrefOfEvent1.ics';
			add: '/remote/hrefOfEvent2.ics';
			add: '/remote/hrefOfEvent3.ics';
			add: '/remote/hrefOfEvent4.ics';
			add: '/remote/hrefOfEvent5.ics';
			add: '/remote/hrefOfEvent6.ics'.
			
	^ hrefs
helpers
etagsOfEvents

	| etags |
	
	etags := OrderedCollection new.
	etags add: 'etagOfEvent1';
			add: 'etagOfEvent2';
			add: 'etagOfEvent3';
			add: 'etagOfEvent4';
			add: 'etagOfEvent5';
			add: 'etagOfEvent6'.
			
	^ etags
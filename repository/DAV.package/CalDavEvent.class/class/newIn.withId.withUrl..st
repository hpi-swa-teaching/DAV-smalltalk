as yet unclassified
newIn: calendar withId: id withUrl: url

	^ self new
		calendar: calendar;
		url: url;
		initializeServerData;
		uid: id;
		yourself
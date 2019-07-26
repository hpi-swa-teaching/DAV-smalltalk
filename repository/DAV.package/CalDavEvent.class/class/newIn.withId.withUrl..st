creating
newIn: calendar withId: id withUrl: url

	^ self new
		calendar: calendar;
		url: url;
		initializeServerData;
		uid: id;
		setClean;
		yourself
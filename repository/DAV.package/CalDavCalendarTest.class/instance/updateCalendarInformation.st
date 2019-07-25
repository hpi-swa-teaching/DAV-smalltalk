helpers
updateCalendarInformation

	| updateInformation |
	
	updateInformation := Dictionary new.
	
	updateInformation at: #displayname put: 'calendarName'.
	updateInformation at: #getctag put: 'cTag'.
	updateInformation at: #'sync-token' put: 'syncToken'.
	updateInformation at: #'getcontenttype' put: 'contentType'.
	
	^ updateInformation
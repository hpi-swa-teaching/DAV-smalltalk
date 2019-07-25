constants
calendarFieldsMapping
	
	^ Dictionary newFrom: 
	   {#displayName -> #'d:displayname' . 
	     #contentType -> #'d:getcontenttype' .
	     #ctag -> #'cs:getctag'.
	     #syncToken -> #'d:sync-token'.
	     #serverColor -> #'ical:calendar-color'.
	     #calendarDescription ->#'caldav:calendar-description'}
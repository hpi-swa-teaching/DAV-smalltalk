A CalDavCalendar is an Object, that stores a calendar locally. All events are stored in the eventsDictionary, with keys being the HREF-URl's of the events and values the event objects.

Instance Variables
	calendarColor:			Color
	calendarName:			String
	contentType:			String
	ctag:					String
	eventsDictionary:		Dictionary
	syncToken:				String
	url:						Url

calendarColor:
	- color attribute for the calendar
	
calendarName:			
	- calendar name
	
contentType:			
	- 	
			
ctag:					
	- hash for calendar status. If state is modified ctag changes.
	
eventsDictionary:		
	- dictionary with all events with url as key
	
syncToken:	
	- toke for calendar state
	
url:
	- calendar url
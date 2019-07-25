A CalDavEvent is a Wrapper for an ICEvent offering multiple convenience methods for manipulating that event, as well as methods for deleting and saving said event.

Instance Variables
	calendar:					CalDavCalendar
	dirty:						Boolean
	etag:						String
	serverCalendar:				ICCalendar
	serverData:					ICEvent
	url:							HierarchicalURI
								
calendar:
	- The calendar, in which the event is saved
	
dirty:
	- flag for modified events
	
etag:
	- hash for the state of an event. If etag changes, it has been modified somewhere else
	
serverCalendar:
	- ICCalendar object with all information about the event and calendar
	
serverData: 
	- ICEvent with all Event information in a readable way. Part of serverCalendar
	
url: 
- last part of url for the event

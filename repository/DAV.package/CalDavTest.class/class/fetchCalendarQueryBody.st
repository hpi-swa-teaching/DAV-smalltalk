mockResponses
fetchCalendarQueryBody

	^ '<?xml  version="1.0" ?>
<D:propfind xmlns:D="DAV:" xmlns:caldav="urn:ietf:params:xml:ns:caldav" xmlns:cs="http://calendarserver.org/ns/"><D:prop><cs:getctag/> <D:displayname/> <D:sync-token/> <D:getcontenttype/> <caldav:calendar-description/> </D:prop></D:propfind>'
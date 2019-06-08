mockResponses
fetchCalendarQueryBody

	^ '<?xml  version="1.0" ?>
<D:propfind xmlns:D="DAV:" xmlns:caldav="urn:ietf:params:xml:ns:caldav" xmlns:cs="http://calendarserver.org/ns/"><d:prop><cs:getctag/> <d:displayname/> <d:sync-token/> <d:getcontenttype/> <caldav:calendar-description/> </d:prop></D:propfind>'
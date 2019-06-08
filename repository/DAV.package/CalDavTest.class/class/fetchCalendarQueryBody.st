mockResponses
fetchCalendarQueryBody

	^ '<?xml  version="1.0" ?>
<d:propfind xmlns:caldav="urn:ietf:params:xml:ns:caldav" xmlns:cs="http://calendarserver.org/ns/" xmlns:d="DAV:"><d:prop><cs:getctag/> <d:displayname/> <d:sync-token/> <d:getcontenttype/> <caldav:calendar-description/> </d:prop></d:propfind>'
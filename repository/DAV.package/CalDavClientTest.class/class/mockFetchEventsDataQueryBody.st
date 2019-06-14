mockResponses
mockFetchEventsDataQueryBody

	^ '<?xml  version="1.0" ?>
<c:calendar-query xmlns:c="urn:ietf:params:xml:ns:caldav" xmlns:d="DAV:"><d:prop><d:getetag/> <d:getlastmodified/> <d:getcontentlength/> <d:getcontenttype/> </d:prop><c:filter>
<c:comp-filter name="VCALENDAR"/> </c:filter></c:calendar-query>'
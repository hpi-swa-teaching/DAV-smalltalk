as yet unclassified
testCalDavFetchCalendarQuery

 | result expectedBody |
 expectedBody := '<?xml  version="1.0" ?>
<D:propfind xmlns:D="DAV:" xmlns:caldav="urn:ietf:params:xml:ns:caldav" xmlns:cs="http://calendarserver.org/ns/"><D:prop><cs:getctag/> <D:displayname/> <caldav:calendar-description/> </D:prop></D:propfind>'.
 result := self client fetchCalendarQuery.
 self assert: (result body) equals: expectedBody
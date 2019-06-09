queries
fetchCalendarQuery

	^ DAVPropfindQuery
		namespaces: #((cs 'http://calendarserver.org/ns/') (caldav 'urn:ietf:params:xml:ns:caldav'))
		properties: #('cs:getctag' 'd:displayname' 'd:sync-token' 'd:getcontenttype'  'caldav:calendar-description').

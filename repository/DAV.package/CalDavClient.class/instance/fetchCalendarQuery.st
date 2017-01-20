queries
fetchCalendarQuery

	^ '<d:propfind xmlns:d="DAV:" xmlns:cs="http://calendarserver.org/ns/" xmlns:c="urn:ietf:params:xml:ns:caldav">
		<d:prop>
		      <d:getctag />
			<d:displayname />
			<cs:calendar-description />
		</d:prop>
	    </d:propfind>'
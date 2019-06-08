queries
fetchEtagsOfEvents: anUrl

	| request filter |
	
	request := CalDAVReportQuery new initializeFromUrl: anUrl.
	filter := Filter new.
	filter type: 'c:comp-filter'.
	filter attributes: #(('name' 'VCALENDAR')).
	request
		 type: 'c:calendar-query';
		filters: (OrderedCollection new add: filter; yourself);
		namespaces: #((c 'urn:ietf:params:xml:ns:caldav'));
		properties: #('D:getetag').

	^  (self webDAVClient sendRequest: request) content.
helpers - parsing
xmlCalendarPropNode

	^ (XMLElement named: #'d:prop')
		addElement: ((XMLElement named: #'cs:getctag') addContent: 'cTag' asText);
		addElement: 
			((XMLElement named: #'d:displayname') addContent: 'calendarName' asText);
		addElement: 
			((XMLElement named: #'d:sync-token') addContent: 'syncToken' asText)
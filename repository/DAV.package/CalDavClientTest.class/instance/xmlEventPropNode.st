helpers - parsing
xmlEventPropNode

	^ (XMLElement named: #'d:prop')
		addElement: ((XMLElement named: #'d:getetag') addContent: 'eTag' asText);
		addElement:
			((XMLElement named: #'cal:calendar-data') addContent: self iCalData asText)
low parsing
parseSingleVCalendarResponse: anElem
	
	| response |

	response := Dictionary new.
	response at: #href put: (self parseProperty: #d:href from: anElem);
			at: #etag put: (self parseProperty: #d:getetag from: anElem);
			at: #status put: (self parseProperty: #d:status from: anElem);
			at: #content put: (self parseProperty: #'cal:calendar-data' from: anElem).
			
	^ response
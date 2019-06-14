low parsing
parseCheckElem: anElem
	
	| response |

	response := Dictionary new.
	response at: #href put: (self parseProperty: #d:href from: anElem);
			at: #etag put: (self parseProperty: #d:getetag from: anElem);
			at: #status put: (self parseProperty: #d:status from: anElem).
			
	^ response
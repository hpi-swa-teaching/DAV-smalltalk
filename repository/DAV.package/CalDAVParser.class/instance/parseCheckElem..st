low parsing
parseCheckElem: anElem
	
	| response |

	response := Dictionary new.
	response at: #href put: ((anElem firstTagNamed: #d:href) characterData);
			at: #etag put: ((anElem firstTagNamed: #d:getetag) characterData);
			at: #status put: ((anElem firstTagNamed: #d:status) characterData).
			
	^ response
low parsing
parseCheckElem: anElem
	
	| response |

	response := CheckParsedResponse new.
	response href: ((anElem firstTagNamed: #d:href) characterData);
			etag: ((anElem firstTagNamed: #d:getetag) characterData);
			status: ((anElem firstTagNamed: #d:status) characterData).
			
	^ response
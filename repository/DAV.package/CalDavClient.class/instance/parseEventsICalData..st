parsing
parseEventsICalData: responseContent

	| xmlDocument |

	xmlDocument := self parseXML: responseContent.
	
	^ xmlDocument root elements collect: [:element | self parseEventICalData: element]	
		

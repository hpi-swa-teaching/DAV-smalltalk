parsing - core
parseEventsInformation: responseContent

	| xmlDocument |

	xmlDocument := self parseXML: responseContent.
	
	^ xmlDocument root elements collect: [:element | self parseEventInformation: element]
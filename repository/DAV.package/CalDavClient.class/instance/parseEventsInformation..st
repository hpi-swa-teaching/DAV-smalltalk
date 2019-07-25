parsing
parseEventsInformation: responseContent

	| xmlDocument |

	self flag: #TODO. "einheitliche Benennung - element or node"

	xmlDocument := self parseXML: responseContent.
	
	^ xmlDocument root elements collect: [:element | self parseEventInformation: element]

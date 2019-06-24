parsing
parseEventsICalData: responseContent

	| xmlDocument |

	xmlDocument := XMLDOMParser parseDocumentFrom: responseContent readStream.
	
	^ xmlDocument root elements collect: [:elem | self parseEventICalData: elem]	
		

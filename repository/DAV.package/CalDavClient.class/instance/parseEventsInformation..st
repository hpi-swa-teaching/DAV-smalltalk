parsing
parseEventsInformation: responseContent

	| xmlDocument |

	xmlDocument := XMLDOMParser parseDocumentFrom: responseContent readStream.
	
	^ xmlDocument root elements collect: [:elem | self parseEventInformation: elem]	
		
	"result := xmlDocument root.
	eventResults := result elements.
	^ eventResults 
		select: [:resultNode |
			((resultNode firstTagNamed: #'d:resourcetype') elements
				anySatisfy: [:e | e name = 'caldav:calendar']) not]
		thenCollect: [:resultNode |
			self parseEventInformation: resultNode]."

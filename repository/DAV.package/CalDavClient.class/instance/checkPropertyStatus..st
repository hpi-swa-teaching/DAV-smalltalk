parsing
checkPropertyStatus: anEventNode

	| propertyStatus |
	
	propertyStatus := anEventNode firstTagNamed: #'d:propstat'.
	
	(propertyStatus firstTagNamed: #'d:status') contents first string = 'HTTP/1.1 200 OK'
		ifFalse: [CalDavGenericException signal:
					'There was an error retrieving information for an event']
parsing
throwEventParsingException

	^ CalDavGenericException signal: 'There was an error retrieving information for an event'
updating
removeDeletedEvents: updateInformation

	| urlsToRemove |
	
	urlsToRemove := self determineUrlsToRemove: updateInformation.
				
	urlsToRemove do: [:url | self deleteEventOf: url]
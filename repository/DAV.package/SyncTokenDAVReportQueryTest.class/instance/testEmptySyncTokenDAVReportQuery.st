tests - instanceCreation
testEmptySyncTokenDAVReportQuery
	
	self query: SyncTokenDAVReportQuery empty.
	self assert: (self query body matchesRegex:
		 '<\?xml  version="1.0" \?>(\s.*)?<d\:sync-collection xmlns\:d="DAV\:">(\s.*)?<d\:sync-token/>(\s.*)?</d\:sync-collection>').
	self assert: self query method equals: 'REPORT'.
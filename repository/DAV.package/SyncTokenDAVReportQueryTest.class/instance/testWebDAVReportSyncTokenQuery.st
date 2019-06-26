tests - xml
testWebDAVReportSyncTokenQuery

	self query limit: 1.
	self assert: (self query content matchesRegex:
		'\s*<\?xml  version="1.0" \?>\s*<d\:sync-collection xmlns\:d="DAV\:">', 		'\s*<d\:sync-token/>\s* <d\:limit>\s*<d\:nresults>\s*1\s*</d\:nresults>\s*</d\:limit>', 		'\s*</d\:sync-collection>\s*')
helpers
isValidDAVQuery: aDAVQuery

	^ (aDAVQuery headerAt: 'Content-Type') = 'application/xml' 

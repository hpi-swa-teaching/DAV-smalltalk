sending
sendRequest: aDAVQuery
	
	^ self
		sendRequest: aDAVQuery content: aDAVQuery content readStream size: aDAVQuery size
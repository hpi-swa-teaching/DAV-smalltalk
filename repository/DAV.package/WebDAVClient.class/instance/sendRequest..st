sending
sendRequest: aDAVQuery
	
	^ self
		initializeFromUrl: aDAVQuery fullUrl;
		sendRequest: aDAVQuery content: aDAVQuery body readStream size: aDAVQuery size
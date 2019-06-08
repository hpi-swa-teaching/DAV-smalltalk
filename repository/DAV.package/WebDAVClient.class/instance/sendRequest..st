sending
sendRequest: aDAVQuery

	^ self
		initializeFromUrl: aDAVQuery rawUrl;
		sendRequest: aDAVQuery content: aDAVQuery body readStream size: aDAVQuery size
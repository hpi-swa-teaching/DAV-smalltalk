sending
sendRequest: aWebDAVQuery

	^ self
		initializeFromUrl: aWebDAVQuery rawUrl;
		sendRequest: aWebDAVQuery content: aWebDAVQuery body readStream size: aWebDAVQuery size
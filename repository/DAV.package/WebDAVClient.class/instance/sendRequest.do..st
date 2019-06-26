sending
sendRequest: aDAVQuery do: aBlock

	aBlock value: aDAVQuery.

	^ self
		initializeFromUrl: aDAVQuery fullUrl;
		sendRequest: aDAVQuery content: aDAVQuery content readStream size: aDAVQuery size
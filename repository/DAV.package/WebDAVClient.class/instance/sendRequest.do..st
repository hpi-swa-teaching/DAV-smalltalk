sending
sendRequest: aDAVQuery do: aBlock

	aBlock value: aDAVQuery.

	^ self
		initializeFromUrl: aDAVQuery rawUrl;
		sendRequest: aDAVQuery content: aDAVQuery body readStream size: aDAVQuery size
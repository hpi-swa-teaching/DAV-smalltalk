sending
sendRequest: aDAVPropFindQuery do: aBlock

	aBlock value: aDAVPropFindQuery.

	^ self
		initializeFromUrl: aDAVPropFindQuery rawUrl;
		sendRequest: aDAVPropFindQuery content: aDAVPropFindQuery body readStream size: aDAVPropFindQuery size
sending
sendRequest: aDAVPropFindQuery

	^ self
		initializeFromUrl: aDAVPropFindQuery rawUrl;
		sendRequest: aDAVPropFindQuery content: aDAVPropFindQuery body readStream size: aDAVPropFindQuery size
requests
sendTo: anUrl theRequest: queryString withHeader: headerConfigs

	| sendRequest |
	sendRequest := [
		| response |
		response := self webDavClient new davPropfind: anUrl query: self fetchCalendarQuery do: [:request |
			headerConfigs do: [:config | request headerAt: config key put: config value].
			self addAuthorizationInformation: request].
		^ self handleResponse: response.].
	
	[sendRequest on: CalDavRetryException do: sendRequest]
		on: CalDavRetryException do: [self halt].
oldRequests
getCurrentUserFor: calendarURL

	^ WebDAVClient new
		davPropfind: 'https://apidata.googleusercontent.com/caldav/v2/patrick.rein@gmail.com/events' 
		query: WebDAVClient queryCurrentUser
		do: [:request | request headerAt: 'Authorization' put: 'Bearer ' , self accessToken.]
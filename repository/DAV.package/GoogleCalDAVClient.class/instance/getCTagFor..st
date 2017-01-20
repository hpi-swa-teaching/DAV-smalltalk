oldRequests
getCTagFor: calendarURL

	^ WebDAVClient new
		davPropfind: 'https://apidata.googleusercontent.com/caldav/v2/patrick.rein@gmail.com/user' 
		query: WebDAVClient queryFindAll
		do: [:request | request headerAt: 'Authorization' put: 'Bearer ' , self accessToken.]
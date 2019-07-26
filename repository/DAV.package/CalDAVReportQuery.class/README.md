A CalDAVReportQuery is a WebDav Query using the Report http method, that is specialized for handling CalDav Requests with many convenience methods.

Instance Variables
	filters:			OrderedCollection
	objectURLs:		OrderedCollection
	queryType:		String

filters
	- A collection with filters for the query

objectURLs
	- a collection of urls, that should be fetched from the server

queryType
	- Cal Dav Query type

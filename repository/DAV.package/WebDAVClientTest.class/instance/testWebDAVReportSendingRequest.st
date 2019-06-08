tests - methods
testWebDAVReportSendingRequest

 | client url filter response |

client := WebDAVClient new. 
client username: 'U59269'. 
client password: 'LSk8OD'.  
url := 'https://www.caldavserver.com/DAV/calendars/968cdb81-71bc-45a1-af82-4ff016ca48b6/'. 
 
query := CalDAVReportQuery new.
query type: 'c:calendar-query'.
query initializeFromUrl: url.
query properties: #('D:getetag' 'c:calendar-data').
query namespaces: #((c 'urn:ietf:params:xml:ns:caldav')).
	
filter := Filter new.
filter type: 'c:comp-filter'.
filter attributes: #(('name' 'VCALENDAR')).
query filters: (OrderedCollection new add: filter; yourself).
query createXmlBody.

client initializeFromUrl: url.
response := client sendRequest: query.


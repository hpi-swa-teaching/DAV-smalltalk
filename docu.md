# SQUEAK

## Propfind-Request

```
client := WebDAVClient new. 
client username: ''. 
client password: ''.  
url := 'https://owncloud.hpi.de/remote.php/dav/calendars/josafat-mattias.burm/swt_shared_by_hendrik.patzlaff/'. 
res := client davPropfind: url namespaces: #((cs 'http://calendarserver.org/ns/')) properties: #('D:displayname' 'cs:getctag' 'D:sync-token'). 
res content.
```

## Propfind-Request Full

```
client := WebDAVClient new. 
client username: ''. 
client password: ''.  
url := 'https://owncloud.hpi.de/remote.php/dav/calendars/josafat-mattias.burm/swt_shared_by_hendrik.patzlaff/'. 
 
query := DAVPropFindQuery new.
query initializeFromUrl: url;
	namespaces: #((cs 'http://calendarserver.org/ns/'));
	properties: #('cs:getctag').

client initializeFromUrl: url.
res := client sendRequest: query.
res content.
```



## Report-Request (GET ALL)

```
client := WebDAVClient new. 
client username: ''. 
client password: ''.  
url := 'https://owncloud.hpi.de/remote.php/dav/calendars/josafat-mattias.burm/swt_shared_by_hendrik.patzlaff/'. 
 
query := CalDAVReportQuery new.
query queryType: 'c:calendar-query'.
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

response content
```

 

## Parsing ICCAlendar

```
ICCalendarHandParser parseCalendarString: info
bzw:

parser := ICCalendarHandParser new.
parser stream: info readStream.
parser generator: ICCalendarGenerator new.
parser parse.
parser product
```


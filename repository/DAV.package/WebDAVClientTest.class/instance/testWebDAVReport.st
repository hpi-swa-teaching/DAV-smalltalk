tests - methods
testWebDAVReport

 | filter filter2 |
 
query := CalDAVReportQuery new.
query queryType: 'c:calendar-query'.

filter := Filter new.
filter type: 'c:comp-filter'.
filter attributes: #(('name' 'VCALENDAR')).

filter2 := Filter new.
filter2 type: 'c:time-range'.
filter2 attributes: #(('start' '20160321T140000')('end' '20160322T140000')).

query filters: (OrderedCollection new add: filter; add: filter2; yourself).
query createXmlBody.
self assert: query body =  '<?xml  version="1.0" ?>
<c:calendar-query xmlns:D="DAV:"><d:prop></d:prop><c:filter>
<c:comp-filter name="VCALENDAR">
<c:time-range end="20160322T140000" start="20160321T140000"/> </c:comp-filter></c:filter></c:calendar-query>'
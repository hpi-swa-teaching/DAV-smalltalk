tests - methods
testWebDAVReportMultiget

query := DAVReportQuery new.
query queryType: 'c:calendar-multiget'.
query properties: #('getetag' 'calendar-data').

query objectURLs: #('/calendars/user/home/132456762153245.ics' '/calendars/user/home/13245676123245.ics' ).
query createXmlBody.
self assert: query body = '<?xml  version="1.0" ?>
<c:calendar-multiget xmlns:D="DAV:"><D:prop><getetag/> <calendar-data/> </D:prop><d:href>/calendars/user/home/132456762153245.ics</d:href><d:href>/calendars/user/home/13245676123245.ics</d:href></c:calendar-multiget>'
tests - methods
testWebDAVReportSyncTokenQuery

query := ReportSyncTokenQuery new.
query limit: 1.
query createXmlBody.
query body. '<?xml  version="1.0" ?>
<D:sync-collection xmlns:D="DAV:"><D:sync-token/> <D:limit><D:nresults>1</D:nresults></D:limit><D:prop></D:prop></D:sync-collection>'.



query := ReportSyncTokenQuery new.
query syncToken: 'http://example.com/ns/sync/1232'.
query createXmlBody.
self assert: query body =  '<?xml  version="1.0" ?>
<D:sync-collection xmlns:D="DAV:"><D:sync-token>http://example.com/ns/sync/1232</D:sync-token><D:prop></D:prop></D:sync-collection>'
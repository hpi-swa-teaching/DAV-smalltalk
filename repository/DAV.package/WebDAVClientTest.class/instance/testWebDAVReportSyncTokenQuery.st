tests - methods
testWebDAVReportSyncTokenQuery

query := SyncTokenDAVReportQuery new.
query limit: 1.
query createXmlBody.
query body. '<?xml  version="1.0" ?>
<D:sync-collection xmlns:D="DAV:"><D:sync-token/> <D:limit><D:nresults>1</D:nresults></D:limit><d:prop></d:prop></D:sync-collection>'.
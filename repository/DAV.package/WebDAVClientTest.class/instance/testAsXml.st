tests - xml
testAsXml
	
	query := DAVPropfindQuery new.
	query createXmlBody.
	self assert: query body = '<?xml  version="1.0" ?>
<D:propfind xmlns:D="DAV:"><d:prop></d:prop></D:propfind>'.
	
	query := DAVPropfindQuery new.
	query properties: #('D:displayname').
	query createXmlBody.
	self assert: query body = '<?xml  version="1.0" ?>
<D:propfind xmlns:D="DAV:"><d:prop><d:displayname/> </d:prop></D:propfind>'.

	query := DAVPropfindQuery new.
	query namespaces: #((cs 'https://www.caldavserver.com/ns')).
	query createXmlBody.
	self assert: query body =  '<?xml  version="1.0" ?>
<D:propfind xmlns:D="DAV:" xmlns:cs="https://www.caldavserver.com/ns"><d:prop></d:prop></D:propfind>'.

	query := DAVPropfindQuery new.
	query namespaces: #((cs 'https://www.caldavserver.com/ns')).
	query properties: #('D:displayname' 'cs:getctag').
	query createXmlBody.
	self assert: query body =  '<?xml  version="1.0" ?>
<D:propfind xmlns:D="DAV:" xmlns:cs="https://www.caldavserver.com/ns"><d:prop><d:displayname/> <cs:getctag/> </d:prop></D:propfind>'
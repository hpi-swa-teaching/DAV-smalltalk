tests - xml
testAsXml
	
	query := DAVPropFindQuery new.
	self assert: query createXmlBody = '<?xml  version="1.0" ?>
<D:propfind xmlns:D="DAV:"><D:prop></D:prop></D:propfind>'.
	
	query := DAVPropFindQuery new.
	query properties: #('D:displayname').
	self assert: query createXmlBody = '<?xml  version="1.0" ?>
<D:propfind xmlns:D="DAV:"><D:prop><D:displayname/> </D:prop></D:propfind>'.

	query := DAVPropFindQuery new.
	query namespaces: #((cs 'https://www.caldavserver.com/ns')).
	self assert: query createXmlBody =  '<?xml  version="1.0" ?>
<D:propfind xmlns:D="DAV:" xmlns:cs="https://www.caldavserver.com/ns"><D:prop></D:prop></D:propfind>'.

	query := DAVPropFindQuery new.
	query namespaces: #((cs 'https://www.caldavserver.com/ns')).
	query properties: #('D:displayname' 'cs:getctag').
	self assert: query createXmlBody =  '<?xml  version="1.0" ?>
<D:propfind xmlns:D="DAV:" xmlns:cs="https://www.caldavserver.com/ns"><D:prop><D:displayname/> <cs:getctag/> </D:prop></D:propfind>'
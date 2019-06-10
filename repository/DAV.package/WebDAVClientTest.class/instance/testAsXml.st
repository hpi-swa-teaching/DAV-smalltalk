tests - xml
testAsXml
	
	query := DAVPropfindQuery new.
	query createXmlBody.
	self assert: query body = '<?xml  version="1.0" ?>
<d:propfind xmlns:d="DAV:"><d:prop></d:prop></d:propfind>'.
	
	query := DAVPropfindQuery new.
	query properties: #('d:displayname').
	query createXmlBody.
	self assert: query body = '<?xml  version="1.0" ?>
<d:propfind xmlns:d="DAV:"><d:prop><d:displayname/> </d:prop></d:propfind>'.

	query := DAVPropfindQuery new.
	query namespaces: #((cs 'https://www.caldavserver.com/ns')).
	query createXmlBody.
	self assert: query body =  '<?xml  version="1.0" ?>
<d:propfind xmlns:cs="https://www.caldavserver.com/ns" xmlns:d="DAV:"><d:prop></d:prop></d:propfind>'.

	query := DAVPropfindQuery new.
	query namespaces: #((cs 'https://www.caldavserver.com/ns')).
	query properties: #('d:displayname' 'cs:getctag').
	query createXmlBody.
	self assert: query body =  '<?xml  version="1.0" ?>
<d:propfind xmlns:cs="https://www.caldavserver.com/ns" xmlns:d="DAV:"><d:prop><d:displayname/> <cs:getctag/> </d:prop></d:propfind>'
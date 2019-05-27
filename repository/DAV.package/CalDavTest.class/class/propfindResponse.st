mockResponses
propfindResponse

	^ '<?xml version="1.0"?>
<d:multistatus xmlns:d="DAV:" xmlns:s="http://sabredav.org/ns" xmlns:cal="urn:ietf:params:xml:ns:caldav" xmlns:cs="http://calendarserver.org/ns/" xmlns:oc="http://owncloud.org/ns">
    <d:response>
        <d:href>/remote.php/dav/calendars/josafat-mattias.burm/swt_shared_by_hendrik.patzlaff/</d:href>
        <d:propstat>
            <d:prop>
                <d:displayname>SWT (hendrik.patzlaff)</d:displayname>
                <cs:getctag>http://sabre.io/ns/sync/23</cs:getctag>
                <d:sync-token>http://sabre.io/ns/sync/23</d:sync-token>
            </d:prop>
            <d:status>HTTP/1.1 200 OK</d:status>
        </d:propstat>
    </d:response>
</d:multistatus>'
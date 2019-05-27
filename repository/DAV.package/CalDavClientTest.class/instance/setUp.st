as yet unclassified
setUp

| url |
 super setUp.
 url := 'https://owncloud.hpi.de/remote.php/dav/calendars/josafat-mattias.burm/swt_shared_by_hendrik.patzlaff/'.
CalDavClient registerClient: CalDavClient new for: url.
client:= CalDavClient registeredClientFor: url asUrl.
webdavClient := WebDAVClient new.
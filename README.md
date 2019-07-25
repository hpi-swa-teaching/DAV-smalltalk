# DAV-smalltalk
[![Build Status](https://travis-ci.org/hpi-swa-teaching/DAV-smalltalk.svg)](https://travis-ci.org/hpi-swa-teaching/DAV-smalltalk)

A Smalltalk implementation of WebDAV and CalDAV

## Setup

Run this command in workspace, to load all required packages.

    Metacello new
      baseline: 'DAV';
      repository: 'github://hpi-swa-teaching/DAV-smalltalk:master/repository';
      load.
      
## Architecture
To get an overview of the library, the following pictures can help. 

### WebDAV

Current features:

- object representation of WebDAV queries (PROPFIND, REPORT) and wrapper objects for standard http queries (GET, PUT, DELETE) extending WebRequest
- WebDAVClient extending WebClient providing convinience methods for sending WebDAV requests

General structure of WebDAV package:
![image has been removed](https://owncloud.hpi.de/s/gd43fYnczuRjJNZ/download)

WebDAV Query Structure:
![image has been removed](https://owncloud.hpi.de/s/iOtt6N7VY0I5ter/download)

### CalDAV
Structure of CalDAV package:
![image has been removed](https://owncloud.hpi.de/s/KTee6neBJmFiwca/download)


## Connection to calendar servers

Currently, only SabreClient and Google Client are supported.

### Google Client
In order to get the Google client to work, you need to provide your client id and secret as described here: https://developers.google.com/google-apps/calendar/caldav/v2/guide

Put the client id into `GoogleCalDAVClient>>#clientId` and the client secret into `GoogleCalDAVClient>>#clientKey`.

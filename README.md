# DAV-smalltalk
[![Build Status](https://travis-ci.org/hpi-swa-teaching/DAV-smalltalk.svg)](https://travis-ci.org/hpi-swa-teaching/DAV-smalltalk)

A Smalltalk implementation of WebDAV and CalDAV

## Setup

### Google Client
In order to get the Google client to work, you need to provide your client id and secret as described here: https://developers.google.com/google-apps/calendar/caldav/v2/guide

Put the client id into `GoogleCalDAVClient>>#clientId` and the client secret into `GoogleCalDAVClient>>#clientKey`.

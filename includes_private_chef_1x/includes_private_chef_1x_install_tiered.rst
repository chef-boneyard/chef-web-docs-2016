.. The contents of this file may be included in multiple topics.
.. This file should not be changed in a way that hinders its ability to appear in multiple documentation sets.

The Tiered installation allows you to install |chef private| on multiple servers, in order to scale portions of the service horizontally. It does not provide high availability for the back-end data services, but instead relies on the ability to quickly restore the state of the server from a backup or from source code control. |opscode| generally recommends a High Availability installation rather than a Tiered installation, whenever possible.

We refer to all the servers in a particular installation of |chef private| as a cluster.

The Tiered installation consists of multiple front-end servers talking to a single back-end server. This allows for a higher level of concurrency on API requests, while scaling the back-end server vertically to handle the increased I/O load.

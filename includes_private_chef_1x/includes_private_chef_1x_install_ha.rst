.. The contents of this file may be included in multiple topics.
.. This file should not be changed in a way that hinders its ability to appear in multiple documentation sets.

The High Availability installation allows you to install |chef private| on multiple servers, in order to scale portions of the service horizontally, with a highly available back-end infrastructure. This is the recommended configuration for production utilization of |chef private|.

We refer to all the servers in a particular installation of |chef private| as a cluster.

The High Availability installation consists of multiple front-end servers talking to a pair of clustered back-end servers. This allows for a higher level of concurrency on API requests, while scaling the back-end servers vertically to handle the increased I/O load.



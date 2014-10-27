.. THIS PAGE DOCUMENTS Enterprise Chef server version 11.2

Loopback Interface
=====================================================
A single loopback interface should be configured using the ``127.0.0.1`` address. This ensures that all of the services are available to the |chef server|, in the event that the |chef server| attempts to contact itself from within a machine. For proper functioning, all of the ports listed should be accessible through the loopback interface.

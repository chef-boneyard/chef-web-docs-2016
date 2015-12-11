.. The contents of this file are included in multiple topics.
.. This file should not be changed in a way that hinders its ability to appear in multiple documentation sets.


|chef analytics| includes a powerful rules processing system that allows notifications to be generated based on observed events in the data stream, such as:

* Cookbook uploads
* Modifications to environments
* Machines on which |chef client| runs have failed
* Machines on which |chef client_audit| runs have failed
* Resources that were updated as a result of a |chef client| run

Notifications may be sent to any email address, a chat service like |hipchat| or |slack|, or to a webhook-based service for generic intergrations.

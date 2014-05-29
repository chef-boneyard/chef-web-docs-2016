.. The contents of this file are included in multiple topics.
.. This file should not be changed in a way that hinders its ability to appear in multiple documentation sets.


Use the |resource container_service| resource to enable or disable |runit| inside a |docker| container. |runit| is the service used by |chef| to run the applications inside a |docker| container. The |resource container_service| resource leverages the |resource service| resource. After the platform has been identified by the |chef client|, the |resource container_service| replaces the |resource service| resource's provider with a provider that is dedicated to containers, and then enables or disables |runit| within that container. 






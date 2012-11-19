.. The contents of this file are included in multiple topics.
.. This file should not be changed in a way that hinders its ability to appear in multiple documentation sets.

The the name of a node is required as part of the authentication process to the |chef server|. The name of each node must be unique within the |chef| organization, but otherwise can be any string that matches the following regular expression::

   /^[\-[:alnum:]_:.]+$/

The name of a node can be obtained from the ``node_name`` attribute in the |client rb| file or by allowing |ohai| to collect this data during the |chef| run. When |ohai| collects this data during the |chef| run, it uses the |fully qualified domain name| name of the node (which is always unique within an organization) as the name of the node. 

Using the |fully qualified domain name| as the node name, and then allowing |ohai| to collect this information during each |chef| run, is the recommended approach and the easiest way to ensure that the node name for all nodes in the |chef| organization are unique.
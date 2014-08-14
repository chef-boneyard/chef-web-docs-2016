.. The contents of this file are included in multiple topics.
.. This file should not be changed in a way that hinders its ability to appear in multiple documentation sets.


Each node stores its private key locally. This private key is generated as part of the bootstrap process that initially installs the |chef client| on the node. The first time |chef client| runs on that node, it uses the |chef validator| to authenticate, but then on each subsequent run it uses the private key generated for that client by the |chef server|.

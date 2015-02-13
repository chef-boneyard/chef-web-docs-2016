.. The contents of this file are included in multiple topics.
.. This file should not be changed in a way that hinders its ability to appear in multiple documentation sets.

* Avoid dashes in cookbook names. This is because lightweight resources use the cookbook name as part of the resource name, so the methods become very awkward. In particular, since ``-`` can't be part of a symbol in |ruby|, you won't be able to use lightweight resources in any cookbook with ``-`` in its name.
* All organization application cookbooks should be prefixed with a short organizational prefix, such as 'sm' for 'SecondMarket' (e.g. 'smpostgresql')

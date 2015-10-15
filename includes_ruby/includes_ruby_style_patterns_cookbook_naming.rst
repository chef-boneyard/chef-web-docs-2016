.. The contents of this file are included in multiple topics.
.. This file should not be changed in a way that hinders its ability to appear in multiple documentation sets.

* Avoid dashes in cookbook names. This is because many custom resources use the cookbook name as part of the resource name, so the method names themselves can become awkward, but also ``-`` cannot be part of a symbol in |ruby| and the presence of dashes in cookbook names may trigger undesired errors later on in the process
* All organization application cookbooks should be prefixed with a short organizational prefix, such as 'sm' for 'SecondMarket' (e.g. 'smpostgresql')

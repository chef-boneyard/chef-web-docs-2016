.. The contents of this file are included in multiple topics.
.. This file should not be changed in a way that hinders its ability to appear in multiple documentation sets.


Operators must be in ALL CAPS. Parentheses can be used to group clauses and to form sub-queries.

.. warning:: Using ``AND NOT`` together may trigger an error. For example:
   
   .. code-block:: bash

      ERROR: knife search failed: invalid search query:
      'datacenter%3A123%20AND%20NOT%20hostname%3Adev-%20AND%20NOT%20hostanem%3Asyslog-' 
      Parse error at offset: 38 Reason: Expected one of \ at line 1, column 42 (byte 42) after AND
   
   Use ``-`` instead of ``NOT``. For example:
   
   .. code-block:: bash

      $ knife search sample "id:foo AND -id:bar"

.. The contents of this file are included in multiple topics.
.. This file should not be changed in a way that hinders its ability to appear in multiple documentation sets.


|search operator| Searches can use the following Boolean operators:

.. list-table::
   :widths: 200 300
   :header-rows: 1

   * - Boolean Operator
     - Description
   * - ``AND``
     - Use to find a match when both terms exist.
   * - ``OR``
     - Use to find a match if either term exists.
   * - ``NOT``
     - Use to exclude the term after NOT from the search results.

Boolean operators must be in ALL CAPS. Parentheses can be used to group clauses and to form sub-queries.

.. warning:: Using ``AND NOT`` together may trigger an error. For example:
   
   .. code-block:: bash

      ERROR: knife search failed: invalid search query:
      'datacenter%3A123%20AND%20NOT%20hostname%3Adev-%20AND%20NOT%20hostanem%3Asyslog-' 
      Parse error at offset: 38 Reason: Expected one of \ at line 1, column 42 (byte 42) after AND
   
   Use ``-`` instead of ``NOT``. For example:
   
   .. code-block:: bash

      $ knife search sample "id:foo AND -id:bar"

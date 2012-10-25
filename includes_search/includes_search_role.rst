.. The contents of this file are included in multiple topics.
.. This file should not be changed in a way that hinders its ability to appear in multiple documentation sets.


A search query can be made for roles that are at the top-level of a run-list and also for a role that is part of an expanded run-list.

.. note:: The ``roles`` field is updated each time the |chef client| is run; changes to a run-list will not affect ``roles`` until the next time the |chef client| is run on the node. 

.. list-table::
   :widths: 200 300
   :header-rows: 1

   * - Role Location
     - Description
   * - Top-level
     - To find a node with a role in the top-level of its run-list, search within the ``role`` field (and escaping any special characters with the slash symbol) using the following syntax::
       
          role:ROLE_NAME
       
       where ``role`` (singlular!) indicates the top-level run-list.
   * - Expanded
     - To find a node with a role in an expanded run-list, search within the ``roles`` field (and escaping any special characters with the slash symbol) using the following syntax::
       
          roles:ROLE_NAME
       
       where ``roles`` (plural!) indicates the expanded run-list.
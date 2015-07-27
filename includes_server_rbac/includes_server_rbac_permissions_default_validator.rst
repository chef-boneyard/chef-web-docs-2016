.. The contents of this file are included in multiple topics.
.. This file should not be changed in a way that hinders its ability to appear in multiple documentation sets.


The |chef validator| is allowed to do the following at the start of a |chef client| run. After the |chef client| is registered with |chef server|, that |chef client| is added to the ``clients`` group:

.. list-table::
   :widths: 160 100 100 100 100
   :header-rows: 1

   * - Object
     - Create
     - Delete
     - Read
     - Update
   * - clients
     - yes
     - no
     - no
     - no

.. The contents of this file are included in multiple topics.
.. This file should not be changed in a way that hinders its ability to appear in multiple documentation sets.


The ``search`` sub-command in |knife| is used to run a search query for information that is indexed on a |chef server|. The sub-command has the following syntax::

   knife search INDEX SEARCH_QUERY

where ``INDEX`` is one of ``client``, ``environment``, ``node``, ``role``, or the name of a data bag and SEARCH_QUERY is the search query syntax for the query that will be executed.

.. list-table::
   :widths: 200 300
   :header-rows: 1

   * - Search Target
     - |knife| Example
   * - |chef client|
     - ``knife search client "key:search_pattern"``
   * - Data bag
     - ``knife search name_of_data_bag "key:search_pattern"``
   * - Environment
     - ``knife search environment "key:search_pattern"``
   * - Node
     - ``knife search node "key:search_pattern"``
   * - Role
     - ``knife search role "key:search_pattern"``

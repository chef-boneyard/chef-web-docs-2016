.. The contents of this file are included in multiple topics.
.. This file should not be changed in a way that hinders its ability to appear in multiple documentation sets.

For back-end servers in an |chef server| installation:

.. list-table::
   :widths: 60 420 60
   :header-rows: 1

   * - Port
     - Service
     - External
   * - 5984
     - |service couchdb|
     - yes
   * - 8983
     - |service solr| or |service solr4|
     - yes
   * - 5432
     - |service postgresql|
     - yes
   * - 5672
     - |service rabbitmq|
     - yes
   * - 16379
     - |service redis_lb|
     - yes
   * - 4321
     - |service bookshelf|
     - yes
   * - 4369
     - |service orgcreator|
     - no
   * - 7788-7799
     - |drbd| This port range must be open between all back end servers.
     - no

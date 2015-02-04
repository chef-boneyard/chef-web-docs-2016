.. The contents of this file may be included in multiple topics.
.. This file should not be changed in a way that hinders its ability to appear in multiple documentation sets.

If host-based firewalls (iptables, ufw, etc.) are being used, ensure that the following ports are open on each of the front-end servers:

.. list-table::
   :widths: 60 420
   :header-rows: 1

   * - Port
     - Used by ...
   * - 80
     - nginx
   * - 443
     - nginx
   * - 9672
     - nrpe

On the back-end server:

.. list-table::
   :widths: 60 420
   :header-rows: 1

   * - Port
     - Used by ...
   * - 80
     - nginx
   * - 443
     - nginx
   * - 4321
     - bookshelf
   * - 4369
     - opscode-org-creator
   * - 5140
     - opscode-certificate
   * - 5432
     - postgresql
   * - 5672
     - rabbitmq
   * - 5984
     - couchdb
   * - 6379
     - redis
   * - 7788
     - drbd
   * - 8000
     - opscode-erchef
   * - 8983
     - opscode-solr
   * - 9000
     - nagios
   * - 9460
     - opscode-chef
   * - 9462
     - opscode-webui
   * - 9463
     - opscode-authz
   * - 9465
     - opscode-account
   * - 9466
     - estatsd
   * - 9670
     - nagios
   * - 9671
     - nagios
   * - 9672
     - nrpe
   * - 9671
     - nginx
   * - 9680
     - nginx
   * - 9683
     - nginx
   * - 9685
     - nginx

Refer to the operating systems manual or a site systems administrators for instructions on how to enable this change.

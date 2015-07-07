.. The contents of this file are included in multiple topics.
.. This file should not be changed in a way that hinders its ability to appear in multiple documentation sets.

For communication between |chef analytics| and the |chef server|, ensure that ports marked as external (``yes``) are open and accessible via any firewalls that are in use:

.. list-table::
   :widths: 60 420 60
   :header-rows: 1

   * - Port
     - Service
     - External
   * - 80
     - |service nginx|
     - yes
   * - 443
     - |service nginx|
     - yes
   * - 5672
     - |service rabbitmq|

       .. note:: The |rabbitmq| port on the |chef server| must alow inbound traffic from |chef analytics|.
     - no
   * - 10011
     - actions
     - no
   * - 10012
     - actions_messages
     - no
   * - 10013
     - notifier_config
     - no


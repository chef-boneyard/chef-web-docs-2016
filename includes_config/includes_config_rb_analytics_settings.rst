.. The contents of this file are included in multiple topics.
.. This file should not be changed in a way that hinders its ability to appear in multiple documentation sets.

The following settings are typically added to the |analytics rb| file:

.. list-table::
   :widths: 200 300
   :header-rows: 1

   * - Setting
     - Description
   * - ``analytics_fqdn``
     - The |fqdn| for the |chef analytics| server. This setting is not in the |analytics rb| file by default. When added, its value should be equal to the |fqdn| for the service URI used by the |chef analytics| server. If you are installing in combined mode (|chef server oec| and |chef analytics| servers on the same node) then this must be different from the |fqdn| for the |chef server oec| server.
   * - ``topology``
     - Default value: ``combined``.
   * - ``actions_consumer['hipchat_api_token']``
     - An hipchat v2 API token for your hipchat account that will be used for publishing notifications.
   * - ``actions_consumer['hipchat_room']``
     - The hipchat room to which notifications will be published.
   * - ``actions_consumer['hipchat_enabled']``
     - A list of organizations for which hipchat notifications will be published.




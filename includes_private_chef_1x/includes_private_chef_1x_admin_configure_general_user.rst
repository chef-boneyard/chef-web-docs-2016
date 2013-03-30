.. The contents of this file may be included in multiple topics.
.. This file should not be changed in a way that hinders its ability to appear in multiple documentation sets.


This configuration file has the following settings for users:

.. list-table::
   :widths: 200 300
   :header-rows: 1

   * - Setting
     - Description
   * - ``user['home']``
     - Default value: ``"/opt/opscode/embedded"``. For example:
       ::

          user['home'] = "/opt/opscode/embedded"

   * - ``user['shell']``
     - Default value: ``"/bin/sh"``. For example:
       ::

          user['shell'] = "/bin/sh"

   * - ``user['username']``
     - Default value: ``"opscode"``. For example:
       ::

          user['username'] = "opscode"


.. The contents of this file may be included in multiple topics.
.. This file should not be changed in a way that hinders its ability to appear in multiple documentation sets.


This configuration file has the following settings for the internal load balancers:

.. list-table::
   :widths: 200 300
   :header-rows: 1

   * - Setting
     - Description
   * - ``lb_internal['account_port']``
     - Default value: ``9685``. For example:
       ::

          lb_internal['account_port'] = 9685

   * - ``lb_internal['authz_port']``
     - Default value: ``9683``. For example:
       ::

          lb_internal['authz_port'] = 9683

   * - ``lb_internal['chef_port']``
     - Default value: ``9680``. For example:
       ::

          lb_internal['chef_port'] = 9680

   * - ``lb_internal['enable']``
     - Default value: ``true``. For example:
       ::

          lb_internal['enable'] = true

   * - ``lb_internal['vip']``
     - Default value: ``"127.0.0.1"``. For example:
       ::

          lb_internal['vip'] = "127.0.0.1"


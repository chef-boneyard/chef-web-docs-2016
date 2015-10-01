.. The contents of this file are included in multiple topics.
.. This file should not be changed in a way that hinders its ability to appear in multiple documentation sets.
.. This file documents specifc behavior related to the -j option in the chef-client, chef-solo, and chef-shell executables.

Use this option to use policy files by specifying a |json| file that contains the following settings:

.. list-table::
   :widths: 200 300
   :header-rows: 1

   * - Setting
     - Description
   * - ``policy_group``
     - |name policy_name|
   * - ``policy_name``
     - |name policy_group|

For example:

.. code-block:: javascript

   {
     "policy_name": "appserver",
     "policy_group": "staging"
   }

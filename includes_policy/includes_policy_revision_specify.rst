.. The contents of this file are included in multiple topics.
.. This file should not be changed in a way that hinders its ability to appear in multiple documentation sets.


Use the following command to specify a policy revision:

.. code-block:: bash

   $ chef client -j JSON

where the |json| file is similar to:

.. code-block:: javascript

   {
     "policy_name": "appserver",
     "policy_group": "staging"
   }

Or use the following settings to specify a policy revision in the |client rb| file:

.. list-table::
   :widths: 200 300
   :header-rows: 1

   * - Setting
     - Description
   * - ``policy_group``
     - |name policy_name|
   * - ``policy_name``
     - |name policy_group|

.. The contents of this file are included in multiple topics.
.. This file should not be changed in a way that hinders its ability to appear in multiple documentation sets.


The ``ADDLOCAL`` parameter adds two setup options that are specific to the |chef client|. These options can be passed along with an |microsoft msiexec| command:

.. list-table::
   :widths: 60 420
   :header-rows: 1

   * - Option
     - Description
   * - ``ChefClientFeature``
     - Use to install the |chef client|.
   * - ``ChefClientService``
     - Use to configure the |chef client| as a service in |windows|.

For example:

.. code-block:: bash

   $ msiexec /qb /i c:\inst\chef-client-11.4.4-2.windows.msi ADDLOCAL="ChefClientFeature,ChefClientService"
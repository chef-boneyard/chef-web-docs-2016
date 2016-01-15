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
   * - ``ChefServiceFeature``
     - Use to configure the |chef client| as a service in |windows|.
   * - ``ChefPSModuleFeature``
     - Used to install the chef PowerShell module. This will enable chef command line utilities within PowerShell.

First install the |chef client|, and then enable it to run as a service. For example:

.. code-block:: bash

   $ msiexec /qn /i C:\inst\chef-client-11.8.0-1.windows.msi ADDLOCAL="ChefClientFeature,ChefServiceFeature,ChefPSModuleFeature"

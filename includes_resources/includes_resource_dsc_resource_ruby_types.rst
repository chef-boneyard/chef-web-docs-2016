.. The contents of this file are included in multiple topics.
.. This file should not be changed in a way that hinders its ability to appear in multiple documentation sets.

Use the following |ruby| types to define ``property_value``:

.. list-table::
   :widths: 250 250
   :header-rows: 1

   * - |ruby|
     - |windows powershell|
   * - ``Array``
     - ``Object[]``
   * - ``Chef::Util::Powershell:PSCredential``
     - ``PSCredential``
   * - ``FalseClass``
     - ``bool($false)``
   * - ``Fixnum``
     - ``Integer``
   * - ``Float``
     - ``Double``
   * - ``Hash``
     - ``Hashtable``
   * - ``TrueClass``
     - ``bool($true)``

These are converted into the corresponding |windows powershell| type during the |chef client| run.

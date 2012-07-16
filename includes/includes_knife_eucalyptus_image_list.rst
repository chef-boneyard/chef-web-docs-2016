.. This is an included file that describes a sub-command or argument in Knife.


The ``image list`` argument is used to list of images from the |eucalyptus| environment, listed by ID, kernel ID, architecture, and location.

This argument has the following syntax::

   knife eucalyptus image list

This argument has the following options:

.. list-table::
   :widths: 200 300
   :header-rows: 1

   * - Option
     - Description
   * - ``-A ID``, ``--euca-access-key-id ID``
     - |euca-access-key-id|
   * - ``-K SECRET``, ``--euca-secret-access-key SECRET``
     - |euca-secret-access-key|
   * - ``--euca-api-endpoint ENDPOINT``
     - |euca-api-endpoint|
   * - ``--region REGION``
     - |region eucalyptus|

For example, enter:

.. code-block:: bash

   $ knife eucalyptus flavor list


.. This is an included file that describes a sub-command or argument in Knife.


The ``image list`` argument is used to show a list of images in an |openstack| environment, including details such as ID, kernel ID, architecture, root store, name, and location.

This argument has the following syntax::

   knife openstack image list

This argument has the following options:

.. list-table::
   :widths: 200 300
   :header-rows: 1

   * - Option
     - Description
   * - ``-A ID``, ``--openstack-access-key-id ID``
     - |openstack-access-key-id|
   * - ``-K SECRET``, ``--openstack-secret-access-key SECRET``
     - |openstack-secret-access-key|
   * - ``--openstack-api-endpoint ENDPOINT``
     - |openstack-api-endpoint|
   * - ``--region REGION``
     - |region openstack|

For example, to view a list of images, enter:

.. code-block:: bash

   $ knife openstack image list


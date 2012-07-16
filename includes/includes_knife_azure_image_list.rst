.. This is an included file that describes a sub-command or argument in Knife.


The ``image list`` argument is used to get a list of images that exist in a |windows azure| environment. Any image in this list may be used for provisioning. The results may show instances that are not currently managed by the |chef server|.

This argument has the following syntax::

   knife azure image list (options)

This argument has the following options:

.. list-table::
   :widths: 200 300
   :header-rows: 1

   * - Option
     - Description
   * - ``-H HOST_NAME``, ``--azure_host_name HOST_NAME``
     - |azure-host-name|
   * - ``-p FILE_NAME``, ``--azure-pem-filename FILE_NAME``
     - |azure-pem-filename|
   * - ``-S ID``, ``--azure-subscription-id ID``
     - |azure-subscription-id|


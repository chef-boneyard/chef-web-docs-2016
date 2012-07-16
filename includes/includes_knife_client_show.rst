.. This is an included file that describes a sub-command or argument in Knife.


The ``show`` argument is used to show the details of a |chef| client. 

This argument has the following syntax::

   knife client show CLIENT_NAME (options)

This argument has the following options:

.. list-table::
   :widths: 200 300
   :header-rows: 1

   * - Option
     - Description
   * - ``-a ATTR``, ``--attribute ATTR``
     - |attribute|

For example, to view a client named "testclient", enter:

.. code-block:: bash

   $ knife client show testclient

to return something like:

.. code-block:: bash

   admin:       false
   chef_type:   client
   json_class:  Chef::ApiClient
   name:        testclient
   public_key:




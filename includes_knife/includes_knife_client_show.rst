.. The contents of this file are included in multiple topics.
.. This file describes a command or a sub-command for Knife.
.. This file should not be changed in a way that hinders its ability to appear in multiple documentation sets.


The ``show`` argument is used to show the details of an |chef api client|. 

This argument has the following syntax::

   knife client show CLIENT_NAME (options)

This argument has the following options:

``-a ATTR``, ``--attribute ATTR``
   |attribute|

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

To view information in |json| format, use the ``-F`` common option as part of the command like this:

.. code-block:: bash

   $ knife client show testclient -F json

Other formats available include ``text``, ``yaml``, and ``pp``.



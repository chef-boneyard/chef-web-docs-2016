.. The contents of this file are included in multiple topics.
.. This file describes a command or a sub-command for Knife.
.. This file should not be changed in a way that hinders its ability to appear in multiple documentation sets.


The ``show`` argument is used to show the details of a |chef| client. 

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




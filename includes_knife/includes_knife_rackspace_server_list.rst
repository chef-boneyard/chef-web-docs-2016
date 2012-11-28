.. The contents of this file are included in multiple topics.
.. This file describes a command or a sub-command for Knife.
.. This file should not be changed in a way that hinders its ability to appear in multiple documentation sets.


The ``server list`` argument is used to find instances that are associated with a |rackspace| account. The results may show instances that are not currently managed by the |chef server|.

This argument has the following syntax::

   knife rackspace server list

This argument has the following options:

``-A USER_NAME``, ``--rackspace-username USER_NAME``
   |rackspace-username|

``-K API_KEY``, ``--rackspace-api-key API_KEY``
   |rackspace-api-key|

``--rackspace-api-auth-url``
   |rackspace-api-auth-url|

**Examples**

For example, to find all Rackspace instances, enter:

.. code-block:: bash

   $ knife cloud rackspace list

to return:

.. code-block:: bash

   Instance ID    Public IP    Private IP    Flavor    Image     State     Name        
   12345678       1.1.1.1      192.168.1.1   3         49        active    slice12345678


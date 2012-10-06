.. The contents of this file are included in multiple topics.
.. This file describes a command or a sub-command for Knife.
.. This file should not be changed in a way that hinders its ability to appear in multiple documentation sets.


The ``server list`` argument is used to find instances that are associated with a |rackspace| account. The results may show instances that are not currently managed by the |chef server|.

This argument has the following syntax::

   knife rackspace server list

This argument has the following options:

``-A USER_NAME``, ``--rackspace-username USER_NAME``
   |rackspace-username|

``-c CONFIG``, ``--config CONFIG``
   |config|

``--color``
   |color|

``--defaults``
   |defaults|

``-e EDITOR``, ``--editor EDITOR``
   |editor|

``-E ENVIRONMENT``, ``--environment ENVIRONMENT``
   |environment|

``-F FORMAT``, ``--format FORMAT``
   |format|

``-h``, ``--help``
   |help|

``-k KEY``, ``--key KEY``
   |key|

``-K API_KEY``, ``--rackspace-api-key API_KEY``
   |rackspace-api-key|

``--no-color``
   |no-color|

``-n``, ``--disable-editing``
   |no-editor|

``--print-after``
   |print-after|

``--rackspace-api-auth-url``
   |rackspace-api-auth-url|

``-s URL``, ``--server-url URL``
   |server-url|

``-u USER``, ``--user USER``
   |user|

``-v``, ``--version``
   |version chef|

``-V``, ``--verbose``
   |verbose|

``-y``, ``--yes``
   |yes|

For example, to find all Rackspace instances, enter:

.. code-block:: bash

   $ knife cloud rackspace list

to return:

.. code-block:: bash

   Instance ID    Public IP    Private IP    Flavor    Image     State     Name        
   12345678       1.1.1.1      192.168.1.1   3         49        active    slice12345678


.. The contents of this file are included in multiple topics.
.. This file describes a command or a sub-command for Knife.
.. This file should not be changed in a way that hinders its ability to appear in multiple documentation sets.


The ``show`` argument is used to show the details of a |chef| user. 

This argument has the following syntax::

   knife user show CLIENT_NAME (options)

This argument has the following options:

``-xxxxx``, ``--xxxxx``
   xxxxx.

``-xxxxx``, ``--xxxxx``
   xxxxx.

**Examples**

For example, to view a user named "joe_user", enter:

.. code-block:: bash

   $ knife user show joe_user

to return something like:

.. code-block:: bash

   admin:       false
   chef_type:   user
   json_class:  Chef::User
   name:        joe_user
   public_key:

To view information in |json| format, use the ``-F`` common option as part of the command like this:

.. code-block:: bash

   $ knife user show joe_user -F json

Other formats available include ``text``, ``yaml``, and ``pp``.



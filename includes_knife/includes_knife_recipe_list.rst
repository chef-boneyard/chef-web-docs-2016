.. The contents of this file are included in multiple topics.
.. This file describes a command or a sub-command for Knife.
.. This file should not be changed in a way that hinders its ability to appear in multiple documentation sets.


|knife recipe list|

This subcommand has the following syntax::

   knife recipe list REGEX

**Examples**

For example, enter:

.. code-block:: bash

   $ knife recipe list 'couchdb::*'

to return:

.. code-block:: bash

   couchdb::main_monitors
   couchdb::master
   couchdb::default
   couchdb::org_cleanu



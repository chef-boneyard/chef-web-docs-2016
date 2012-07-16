.. This is an included file that describes a sub-command or argument in Knife.


The ``recipe list`` sub-command is used to view all of the recipes that are on a |chef server|. A regular expression can be used to limit the results to recipes that match a specific pattern. The regular expression must be within quotes and not be surrounded by forward slashes (/).

This sub-command has the following syntax::

   knife recipe list REGEX

For example, enter:

.. code-block:: bash

   $ knife role list 'couchdb::*'

to return:

.. code-block:: bash

   couchdb::main_monitors
   couchdb::master
   couchdb::default
   couchdb::org_cleanu



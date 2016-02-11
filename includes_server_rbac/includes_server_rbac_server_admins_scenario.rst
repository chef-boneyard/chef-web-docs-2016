.. The contents of this file may be included in multiple topics (using the includes directive).
.. The contents of this file should be modified in a way that preserves its ability to appear in multiple topics.


For example, the |chef server| contains the following users: ``pivotol`` (a superuser account), ``alice``, ``bob``, ``carol``, and ``dan``. Use the following command to view the list of users on the |chef server|:

.. code-block:: bash

   $ chef-server-ctl user-list

It should return a list similar to:

.. code-block:: bash

   pivotal
   alice
   bob
   carol
   dan

From a workstation, Alice runs the following command:

.. code-block:: bash

   $ knife user list -c ~/.chef/alice.rb

and the following error is returned:

.. code-block:: bash

   ERROR: You authenticated successfully to <chef_server_url> as alice but you are not authorized for this action
   Response: Missing read permission

Alice is not a superuser and does not have permissions on users other themselves because user accounts are global to organizations in the |chef server|. But Alice is responsible for day-to-day administration of the |chef server|, in particular managing the user accounts for the whole company. Let's add Alice to the |webui group server_admins| group:

.. code-block:: bash

   $ chef-server-ctl grant-server-admin-permissions alice

The following response is returned:

.. code-block:: bash

   User alice was added to server-admins. This user can now list, read, and create users
   (even for orgs they are not members of) for this Chef Server.

From a workstation, Alice re-runs the following command:

.. code-block:: bash

   $ knife user list -c ~/.chef/alice.rb

which now returns:

.. code-block:: bash

   pivotal
   alice
   bob
   carol
   dan

Alice is now a server administrator and use the following |knife| subcommands to manage users on the |chef server|: 

* ``knife user-create``
* ``knife user-delete``
* ``knife user-edit``
* ``knife user-list``
* ``knife user-show``

For example, Alice runs the following command:

.. code-block:: bash

   $ knife user edit carol -c ~/.chef/alice.rb

and the |chef editor| opens in which Alice makes changes, and then saves them.



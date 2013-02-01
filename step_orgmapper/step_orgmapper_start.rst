.. This is an included how-to. 

.. To start |orgmapper|:

Log in to the server that is hosting the |chef private| back-end. (In an high availability configuration, this should be the current primary server in that configuration.)

.. code-block:: bash

   $ /opt/opscode/bin/orgmapper

Next, query organizations, users, and so on similar to the following examples

.. code-block:: ruby

   orgmapper:0 > pp ORGS.all

or:

.. code-block:: ruby

   orgmapper:0 > pp ORGS['ORGNAME']

or:

.. code-block:: ruby

   orgmapper:0 > pp USERS.all

or:

.. code-block:: ruby

   orgmapper:0 > pp USERS['USER']

where (in each of the previous examples) ``ORGNAME`` is the name of the organization and ``USER`` is the name of the user.
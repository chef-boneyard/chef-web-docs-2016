.. The contents of this file are included in multiple topics.
.. This file should not be changed in a way that hinders its ability to appear in multiple documentation sets.


Many components of the |chef server| are written using |erlang| and run on the |beam| virtual machine. One feature of |erlang| and |beam| is the ability to interact with the running service using a command shell. For example:

.. code-block:: bash

   $ cd /opt/opscode/embedded/service/erl/
     export PATH=$PATH:/opt/opscode/bin:/opt/opscode/embedded/bin
     bin/erl -setcookie service_name -name me@127.0.0.1 -remsh service_name@127.0.0.1

where ``service_name`` is ``authz``, ``erchef``, or ``org_app``. This command will then open a shell that is connected to the |erchef| processes:

.. code-block:: bash

   $ Erlang R15B02 (erts-5.9.2) [source] [64-bit] ...

.. warning:: Connecting to the |erlang| processes should only be done when directed by |company_name| support services.

To connect to the |service authz| service, use the following command:

.. code-block:: bash

   $ erl -setcookie authz -name me@127.0.0.1 -remsh authz@127.0.0.1

To connect to the |service erchef| service, use the following command:

.. code-block:: bash

   $ erl -setcookie erchef -name me@127.0.0.1 -remsh erchef@127.0.0.1

To connect to the |service orgcreator| service, use the following command:

.. code-block:: bash

   $ erl -setcookie org_app -name me@127.0.0.1 -remsh org_app@127.0.0.1

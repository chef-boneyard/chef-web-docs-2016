.. The contents of this file are included in multiple topics.
.. This file should not be changed in a way that hinders its ability to appear in multiple documentation sets.

As root on either an Open Source or One Chef Server, you can point to the bundled eper package of debugging tools.
Replace the 2nd and 5th path entries and the X.XX.X in the following path with the items that occur on your system.

.. code-block:: bash

   $ export ERL_LIB=:/opt/{chef-server,opscode}/embedded/service/{erchef,opscode-erchef}/lib/eper-X.XX.X/ebin/

Then, once you have an |erlang| command shell running with the following prompt, you can run commands that can be used to diagnose running Chef Server service issues.

.. code-block:: bash

   Eshell V5.10.4  (abort with ^G)
   (erchef@127.0.0.1)1>

Let's run the dtop tool, which presents a view on the Erlang VM similar to that of the familiar linuxdagnostic command.
The period at the end of the dtop command is required for the command to take effect.

.. code-block:: bash

   (erchef@127.0.0.1)1> dtop:start().

To stop the dtop command, you can use

.. code-block:: bash

   (erchef@127.0.0.1)1> dtop:stop().

To disconnect from the shell, use the following key sequence "Ctrl-g q enter".
The output from the shell after the "Ctrl-g" will look like this, you will enter "q", then the enter key to exit the shell.

.. code-block:: bash

   (erchef@127.0.0.1)1>
   User switch command
   --> q

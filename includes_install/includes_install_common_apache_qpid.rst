.. The contents of this file are included in multiple topics.
.. This file should not be changed in a way that hinders its ability to appear in multiple documentation sets. 

On |centos| and |redhat enterprise linux|  systems, the |apache qpid| daemon is installed by default. The |chef server| uses |rabbitmq| for messaging. Because both |apache qpid| and |rabbitmq| share the same protocol, |apache qpid| must be disabled.

To determine if |apache qpid| is installed, run the following command:

.. code-block:: bash

   $ rpm -qa | grep qpid

If |apache qpid| is installed, a response similar to the following is displayed:

.. code-block:: bash

   $ qpid-cpp-server-0.12-6.el6.x86_64

To disable |apache qpid| run:

.. code-block:: bash

   $ service qpidd stop

and then:

.. code-block:: bash

   $ chkconfig --del qpidd

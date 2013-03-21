.. The contents of this file may be included in multiple topics.
.. This file should not be changed in a way that hinders its ability to appear in multiple documentation sets.

On |centos| and |redhat| systems, the |apache qpid| daemon is installed by default. In order to run |chef private|, this daemon must be disabled, as |chef private| uses |rabbitmq| for messaging (and they share the same protocol).

To determine if it is installed:

.. code-block:: bash

   $ rpm -qa | grep qpid
   qpid-cpp-server-0.12-6.el6.x86_64

If you see a response like the above, you have the |apache qpid| server installed. To disable it:

.. code-block:: bash

   $ service qpidd stop
   $ chkconfig --del qpidd


.. The contents of this file may be included in multiple topics.
.. This file should not be changed in a way that hinders its ability to appear in multiple documentation sets.

|chef private| requires that the systems on which it is running be connected to |ntp|, as |chef private| is particularly sensitive to clock drift. For |redhat| and |centos| 6:

.. code-block:: bash

   $ yum install ntp
   $ chkconfig --add ntp
   $ service ntpd start

For |ubuntu|:

.. code-block:: bash

   $ apt-get install ntp

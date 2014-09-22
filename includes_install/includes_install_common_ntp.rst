.. The contents of this file are included in multiple topics.
.. This file should not be changed in a way that hinders its ability to appear in multiple documentation sets. 

The |chef server| requires that the systems on which it is running be connected to |ntp|, as the |chef server| is particularly sensitive to clock drift. For |redhat| and |centos| 6:

.. code-block:: bash

   $ yum install ntp

or:

.. code-block:: bash

   $ chkconfig ntpd on

or:

.. code-block:: bash

   $ service ntpd start

For |ubuntu|:

.. code-block:: bash

   $ apt-get install ntp

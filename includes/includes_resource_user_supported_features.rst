.. The contents of this file are included in multiple topics.
.. This file should not be changed in a way that hinders its ability to appear in multiple documentation sets.

There are a number of encryption options and tools that can be used to create a password shadow hash. In general, using a strong encryption method like SHA-512 and the ``passwd`` command in the |open ssl| toolkit is a good approach, however the encryption options and tools that are available may be different from one distribution to another. The following examples show how the command line can be used to create a password shadow hash. When using the ``passwd`` command in the |open ssl| tool:

.. code-block:: bash

   openssl passwd -1 "theplaintextpassword"

When using ``mkpasswd``:

.. code-block:: bash

   mkpasswd -m sha-512

For more information:

* http://www.openssl.org/docs/apps/passwd.html
* Check the local documentation or package repository for the distribution that is being used. For example, on |ubuntu| 9.10-10.04, the ``mkpasswd`` package is required and on |ubuntu| 10.10+ the ``whois`` package is required.

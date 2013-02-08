.. The contents of this file may be included in multiple topics.
.. This file should not be changed in a way that hinders its ability to appear in multiple documentation sets.

With both servers now configured for |drbd|, let the cluster know that the bootstrap server should be primary for the shared device:

Make the bootstrap server primary for |drbd| on |redhat| and |centos| 6

.. code-block:: bash

   $ drbdadm primary --force pc0

Make the bootstrap server primary for |drbd| on |ubuntu|:

.. code-block:: bash

   $ drbdadm -- --overwrite-data-of-peer primary pc0


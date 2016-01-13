.. The contents of this file are included in multiple topics.
.. This file should not be changed in a way that hinders its ability to appear in multiple documentation sets.


For |redhat enterprise linux| (6.x and higher) and |centos| (6.x and higher), do the following:

#. Log into the |chef delivery_short| server as root.
#. Run the following command:

   .. code-block:: bash

      ``yum install ca-certificates``

    .. note:: For 6.x servers, run this command only once.

#. Run the following command:

   .. code-block:: bash

      ``update-ca-trust force-enable``

    .. note:: For 6.x servers, run this command only once.

#. Run the following command:

   .. code-block:: bash

      ``cd /etc/pki/ca-trust/source/anchors/``

#. Run the following command:

   .. code-block:: bash

      ``openssl s_client -showcerts -connect {your-ghe-server}:443 </dev/null 2>/dev/null|openssl x509 -outform PEM >{your-ghe-server}.crt``

#. Run the following command:

   .. code-block:: bash

      ``update-ca-trust extract``

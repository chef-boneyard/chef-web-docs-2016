.. The contents of this file are included in multiple topics.
.. This file should not be changed in a way that hinders its ability to appear in multiple documentation sets.


For the |debian| platform, do the following:

#. Log into the |chef delivery_short| server as root.
#. Run the following command:

   .. code-block:: bash

      cd /usr/local/share/ca-certificates

#. Run the following command:

   .. code-block:: bash

      openssl s_client -showcerts -connect {your-bitbucekt-server}:443 </dev/null 2>/dev/null|openssl x509 -outform PEM >{your-bitbucekt-server}.crt

#. Run the following command:

   .. code-block:: bash

      update-ca-certificates

.. The contents of this file are included in multiple topics.
.. This file describes a command or a sub-command for Knife.
.. This file should not be changed in a way that hinders its ability to appear in multiple documentation sets.


The |subcommand knife windows| plugin supports |windows| domain authentication. This requires:

* An |ssl| certificate on the target node
* The certificate details can be viewed and its `thumbprint hex values copied <http://msdn.microsoft.com/en-us/library/ms788967.aspx>`_

To create the listener over HTTPS, run the following command:

.. code-block:: bash

   $ winrm create winrm/config/Listener?Address=IP:<ip_address>+Transport=HTTPS @{Hostname="<fqdn>";CertificateThumbprint="<hexidecimal_thumbprint_value>"}

where the ``CertificateThumbprint`` is the thumbprint hex value copied from the certificate details. (The hex value may require that spaces be removed before passing them to the node using the |subcommand knife windows| plugin.) |windows remote management| 2.0 uses port ``5985`` for HTTP and port ``5986`` for HTTPS traffic, by default.

To bootstrap the target node using the |subcommand knife bootstrap| subcommand, run a command similar to the following:

.. code-block:: bash

   $ knife bootstrap windows winrm 'node1.domain.com' -r 'role[webserver]' -x domain\\administrator -P 'password' -p 5986

and then use the ``winrm`` argument in the |subcommand knife windows| plugin to verify the communication with the new node:

.. code-block:: bash

   $ knife winrm 'node1.domain.com' 'dir' -m -x domain\\administrator -P 'super_secret_password' –p 5986


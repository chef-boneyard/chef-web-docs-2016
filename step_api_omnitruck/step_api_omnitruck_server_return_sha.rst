.. This is an included how-to. 

.. This is an included how-to. 

To use |curl| to return only the SHA for the installer, enter the following:

.. code-block:: bash

   $ curl -s 'https://www.opscode.com/chef/metadata-server?p=ubuntu&pv=12.04&m=x86_64' | awk '$1 == "sha256" { print $2 }'

to return something like:

.. code-block:: bash

   $ 29fa28a18d48bcc8d8e888d4c2dd94386abb6b20cfc341fff62664401d76351c

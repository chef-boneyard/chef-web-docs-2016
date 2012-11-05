.. The contents of this file are included in multiple topics.
.. This file describes a command or a sub-command for Knife.
.. This file should not be changed in a way that hinders its ability to appear in multiple documentation sets.


The ``show`` argument is used to view information about a cookbook on |url cookbook|.

This argument has the following syntax::

   knife cookbook site show COOKBOOK_NAME [COOKBOOK_VERSION]

This argument has the following options:

``COOKBOOK_VERSION``
   |COOKBOOK_VERSION show|

For example:

.. code-block:: bash

   $ knife cookbook site show haproxy
   
to return something like:

.. code-block:: bash

   average_rating:
   category:        Networking
   created_at:      2009-10-25T23:51:07Z
   description:     Installs and configures haproxy
   external_url:
   latest_version:  http://cookbooks.opscode.com/api/v1/cookbooks/haproxy/versions/1_0_3
   maintainer:      opscode
   name:            haproxy
   updated_at:      2011-06-30T21:53:25Z
   versions:
      http://cookbooks.opscode.com/api/v1/cookbooks/haproxy/versions/1_0_3
      http://cookbooks.opscode.com/api/v1/cookbooks/haproxy/versions/1_0_2
      http://cookbooks.opscode.com/api/v1/cookbooks/haproxy/versions/1_0_1
      http://cookbooks.opscode.com/api/v1/cookbooks/haproxy/versions/1_0_0
      http://cookbooks.opscode.com/api/v1/cookbooks/haproxy/versions/0_8_1
      http://cookbooks.opscode.com/api/v1/cookbooks/haproxy/versions/0_8_0
      http://cookbooks.opscode.com/api/v1/cookbooks/haproxy/versions/0_7_0 

To view information in |json| format, use the ``-F`` common option as part of the command like this:

.. code-block:: bash

   $ knife cookbook site show haproxy -F json

Other formats available include ``text``, ``yaml``, and ``pp``.

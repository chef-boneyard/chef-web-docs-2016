.. The contents of this file are included in multiple topics.
.. This file should not be changed in a way that hinders its ability to appear in multiple documentation sets.

The |api omnitruck| can be used to download platform-appropriate versions of the |chef client| and the |chef server|.

The URL from which these downloads can be obtained has the following syntax:

.. code-block:: xml

   http://www.opscode.com/chef/metadata?p=$PLATFORM&pv=$PLATFORM_VERSION&m=$MACHINE_ARCH&v=latest&prerelease=true&nightlies=true
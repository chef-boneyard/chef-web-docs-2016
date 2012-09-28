.. The contents of this file are included in multiple topics.
.. This file describes a command or a sub-command for Knife.
.. This file should not be changed in a way that hinders its ability to appear in multiple documentation sets.


The ``download`` argument is used to download a cookbook from the community website. A cookbook will be downloaded as a |tar gz| archive and placed in the current working directory. If a cookbook (or cookbook version) has been deprecated and the ``--force`` option is not used, |knife| will alert the user that the cookbook is deprecated and then will provide the name of the most recent non-deprecated version of that cookbook.

This argument has the following syntax::

   knife cookbook site download COOKBOOK_NAME [COOKBOOK_VERSION] (options)

This argument has the following options:

``-f FILE``, ``--file FILE``
   |file|

``--force``
   |force|

``COOKBOOK_VERSION``
   |COOKBOOK_VERSION download|

For example:

.. code-block:: bash

   $ knife cookbook site download getting-started

to return something like:

.. code-block:: bash

   Downloading getting-started from the cookbooks site at version 0.3.0 to
     /Users/sdanna/opscodesupport/getting-started-0.3.0.tar.gz
   Cookbook saved: /Users/sdanna/opscodesupport/getting-started-0.3.0.tar.gz

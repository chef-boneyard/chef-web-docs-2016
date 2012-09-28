.. The contents of this file are included in multiple topics.
.. This file describes a command or a sub-command for Knife.
.. This file should not be changed in a way that hinders its ability to appear in multiple documentation sets.


|knife configure|

This sub-command has the following syntax::

   knife configure (options)

This sub-command has the following options:

``--client DIRECTORY``
   |client|

``-i``, ``--initial``
   |initial|

``-r REPO``, ``--repository REPO``
   |repository|

For example, to create a |knife rb| file, enter:

.. code-block:: bash

   $ knife configure
   
To configure a |client rb|, enter:

.. code-block:: bash

   $ knife configure client '/directory'



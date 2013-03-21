.. The contents of this file are included in multiple topics.
.. This file describes a command or a sub-command for Knife.
.. This file should not be changed in a way that hinders its ability to appear in multiple documentation sets.


The ``metadata`` argument is used to generate the metadata for one or more cookbooks. 

This argument has the following syntax::

   knife cookbook metadata (options)

This argument has the following options:

``-a``, ``--all``
   |all cookbooks generate|

``-o PATH:PATH``, ``--cookbook-path PATH:PATH``
   |cookbook path|

**Examples**

For example, to generate metadata for all cookbooks:

.. code-block:: bash

   $ knife cookbook metadata -a


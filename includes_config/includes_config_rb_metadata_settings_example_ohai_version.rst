.. The contents of this file are included in multiple topics.
.. This file should not be changed in a way that hinders its ability to appear in multiple documentation sets.


For example, to match any 8.x version of |ohai|, but not 7.x or 9.x:

.. code-block:: ruby

   chef_version "~> 8"

Or matches any 8.x (or higher) version of |ohai|:

.. code-block:: ruby

   chef_version ">= 8"

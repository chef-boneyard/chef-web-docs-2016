.. The contents of this file are included in multiple topics.
.. This file should not be changed in a way that hinders its ability to appear in multiple documentation sets.


For example, to match any 12.x version of the |chef client|, but not 11.x or 13.x:

.. code-block:: ruby

   chef_version "~> 12"

Or matches any 12.x (or higher) version of the |chef client|:

.. code-block:: ruby

   chef_version ">= 12"

Or matches any version of the |chef client| greater than 12.5.1, any 13.x version, but no 14.x versions:

.. code-block:: ruby

   chef_version ">= 12.5.1", "< 14.0"

Or matches any version of the |chef client| greater than or equal to 11.18.4 and less than 12.0 and also any version of the |chef client| greater than or equal to 12.5.1, but less than 13.0:

.. code-block:: ruby

   chef_version ">= 11.18.12", "< 12.0"
   chef_version ">= 12.5.1", "< 13.0"

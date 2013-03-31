.. The contents of this file are included in multiple topics.
.. This file should not be changed in a way that hinders its ability to appear in multiple documentation sets.

A |knife| plugin should have its own namespace (even though |knife| will load a command regardless of its namespace). The namespace is declared using the ``module`` method, for example:

.. code-block:: ruby

   require 'chef/knife'
   # other require attributes, as needed
   
   module MyNamespace
     class SubclassName < Chef::Knife

where ``module MyNamespace`` declares that the |knife| plugin has its own namespace, with a namespace of ``MyNamespace``.
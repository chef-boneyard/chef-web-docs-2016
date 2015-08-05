.. The contents of this file are included in multiple topics.
.. This file should not be changed in a way that hinders its ability to appear in multiple documentation sets.


The following |ohai| example shows a plugin can use a ``mixin`` library and also depend on another plugin:

.. code-block:: ruby

   require 'ohai/mixin/os'
   
   Ohai.plugin(:Os) do
     provides 'os', 'os_version'
     depends 'kernel'
   
     collect_data do
       os collect_os
       os_version kernel[:release]
     end
   end

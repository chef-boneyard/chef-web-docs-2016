.. The contents of this file are included in multiple topics.
.. This file should not be changed in a way that hinders its ability to appear in multiple documentation sets.


The following |ohai| example shows getting initial kernel attribute values:

.. code-block:: ruby

   Ohai.plugin(:Kernel) do
     provides "kernel", "kernel/modules"
   
     def init_kernel
       kernel Mash.new
       [["uname -s", :name], ["uname -r", :release],
       ["uname -v", :version], ["uname -m", :machine]].each do |cmd, property|
         so = shell_out(cmd)
         kernel[property] = so.stdout.split($/)[0]
       end
       kernel
     end


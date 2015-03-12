.. This is an included how-to. 


Use the ``--instances`` option to track instances, which are based on the list of platforms and suites in the |kitchen yml| file:

.. code-block:: yaml

   ---
   instances
     default-ubuntu-1204
       busser:
         root_path: /tmp/busser
         ruby_bindir: /opt/chef/embedded/bin
         sudo: true

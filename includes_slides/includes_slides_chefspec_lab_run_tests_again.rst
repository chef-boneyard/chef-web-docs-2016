.. The contents of this file are included in multiple slide decks.
.. This file should not be changed in a way that hinders its ability to appear in multiple slide decks.


Run:

.. code-block:: bash

   $ rspec spec/unit/*.rb

Returns:

.. code-block:: bash

   Failures:
   
     1) apache::default installs apache
       Failure/Error: expect(chef_run).to install_package('httpd')
         expected "package[httpd]" with action :install to be in Chef run.
           Other package resources:
   
           package[http]
   
         # ./spec/unit/default_spec.rb:9:in 'block in <top (required)>'
   
       Finished in 0.00847 seconds (files took 4.85 seconds to load)
       1 example, 1 failure
   
       Failed examples:
   
       rspec ./spec/unit/default_spec.rb:8 # apache::default installs apache

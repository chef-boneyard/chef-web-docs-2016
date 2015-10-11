.. This is an included how-to. 

To upload the ``ohai`` cookbook to the |chef server|, use |knife| and run the following:

.. code-block:: bash

   knife cookbook upload ohai

to return something similar to:

.. code-block:: bash

   INFO: Saving ohai
   INFO: Validating ruby files
   INFO: Validating templates
   INFO: Syntax OK
   INFO: Generating Metadata
   INFO: Uploading files
   [ ... SNIP ... ]

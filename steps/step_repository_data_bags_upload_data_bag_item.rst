.. This is an included how-to. 

To upload a data bag item to the |chef server|:

1. Create the data bag on the |chef server|. Enter the following:

   .. code-block:: bash

      $ knife data bag create NAME_OF_DATA_BAG

   where ``NAME_OF_DATA_BAG`` is the name of the data bag to be created.
2. Upload the data bag item from a local directory. For example:

   .. code-block:: bash

      $ knife data bag from file NAME_OF_DATA_BAG NAME_OF_DATA_BAG_ITEM.json

   where ``NAME_OF_DATA_BAG_ITEM`` is the name of the data bag item to be uploaded. Repeat for each data bag item that needs to be uploaded.
   

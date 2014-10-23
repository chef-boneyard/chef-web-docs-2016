.. The contents of this file are included in multiple topics.
.. This file should not be changed in a way that hinders its ability to appear in multiple documentation sets.

The ``data_bag_item`` method can be used in a recipe to get the contents of a data bag item. 

The syntax for the ``data_bag_item`` method is as follows:

.. code-block:: ruby

   data_bag_item(bag_name, item, secret)

where ``secret`` is the secret used to load an encrypted data bag. If ``secret`` is not specified, the |chef client| will look for a secret at the path specified by the ``encrypted_data_bag_secret`` setting in the |client rb| file.

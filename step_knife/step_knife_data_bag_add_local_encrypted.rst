.. This is an included how-to. 

To generate an encrypted data bag item in a |json| file for use when the |chef client| is run in local mode (via the ``--local-mode`` option), enter:

.. code-block:: bash

   $ knife data bag from file my_data_bag /path/to/data_bag_item.json -z --secret-file /path/to/encrypted_data_bag_secret

this will create an encrypted |json| file in::

   data_bags/my_data_bag/data_bag_item.json


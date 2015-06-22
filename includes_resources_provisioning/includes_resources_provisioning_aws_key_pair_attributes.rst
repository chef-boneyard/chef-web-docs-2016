.. The contents of this file are included in multiple topics.
.. This file should not be changed in a way that hinders its ability to appear in multiple documentation sets.

This |chef provisioning| driver-specific resource has the following attributes:

.. list-table::
   :widths: 150 450
   :header-rows: 1

   * - Attribute
     - Description
   * - ``allow_overwrite``
     - Use to allow a public or private key to be overwritten.
   * - ``private_key_options``
     - Use to specify a |ruby hash| that defines a list of parameters for the ``private_key`` resource that is used to generate this key.
   * - ``private_key_path``
     - Use to specify the path to the private key to use. The private key will be generated if it does not exist.
   * - ``public_key_path``
     - Use to specify the path to the public key to use. The public key will be generated if it does not exist.

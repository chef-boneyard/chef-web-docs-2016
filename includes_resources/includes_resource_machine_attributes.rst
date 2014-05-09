.. The contents of this file are included in multiple topics.
.. This file should not be changed in a way that hinders its ability to appear in multiple documentation sets.

|description resource_attributes_intro|

.. list-table::
   :widths: 150 450
   :header-rows: 1

   * - Attribute
     - Description
   * - ``admin``
     - Use to specify whether the |chef client| is an API client.
   * - ``chef_server``
     - |chef_server_url|
   * - ``converge``
     - Use to manage convergence when used with the ``:create`` action. Set to ``false`` to prevent convergence. Set to ``true`` to force it. Default value: ``true``.
   * - ``files``
     - A list of files to upload. Syntax: ``REMOTE_PATH => LOCAL_PATH_OR_HASH``.
       
       For example:
       
       .. code-block:: ruby
       
          files '/remote/path.txt' => '/local/path.txt'
       
       or:
       
       .. code-block:: ruby
       
          files '/remote/path.txt' => { :local_path => '/local/path.txt' }
       
       or:
       
       .. code-block:: ruby
       
          files '/remote/path.txt' => { :content => 'foo' }

   * - ``ohai_hints``
     - |hint| For example: ``'ec2' => { 'a' => 'b' } creates file ec2.json with json contents { 'a': 'b' }``.
   * - ``private_key_options``
     - Use to generate a private key of the desired size, type, and so on.
   * - ``provisioner``
     - The provisioner used by chef-metal.
   * - ``provisioner_options``
     - A hash of options to be used instead of the default options provided by the provisioner.
   * - ``public_key_format``
     - Use to specify the format of a public key. Possible values: ``pem`` and ``der``. Default value: ``pem``.
   * - ``public_key_path``
     - The path to a public key.
   * - ``source_key``
     - Use to copy a private key, but apply a different ``format`` and ``password``. Use in conjunction with ``source_key_pass_phrase``` and ``source_key_path``.
   * - ``source_key_pass_phrase``
     - The pass phrase for the private key. Use in conjunction with ``source_key``` and ``source_key_path``.
   * - ``source_key_path``
     - The path to the private key. Use in conjunction with ``source_key``` and ``source_key_pass_phrase``.
   * - ``validator``
     - Use to specify if the |chef client| is a |chef validator|.







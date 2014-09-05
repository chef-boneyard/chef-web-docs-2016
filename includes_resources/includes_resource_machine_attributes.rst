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
   * - ``attributes``
     - Use to specify a hash of attributes to be applied to the machine.
   * - ``chef_environment``
     - |name environment|
   * - ``chef_server``
     - |chef_server_url|
   * - ``complete``
     - Use to specify if all of the attributes specified in ``attributes`` represent a complete specification for the machine. When true, any attributes not specified in ``attributes`` will be reset to their default values.
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

   * - ``name``
     - The name of the machine.
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
   * - ``raw_json``
     - The machine as |json| data. For example:
       
       .. code-block:: javascript
       
          {
           
          }

   * - ``recipe``
     - Use to add a recipe to the run-list for the machine. Each ``recipe`` adds a single recipe to the run-list. The order in which ``recipe`` defines the run-list is the order in which |chef| will execute the run-list on the machine.
   * - ``remove_recipe``
     - Use to remove a recipe from the run-list for the machine.
   * - ``remove_role``
     - Use to remove a role from the run-list for the machine.
   * - ``role``
     - Use to add a role to the run-list for the machine.
   * - ``run_list``
     - Use to specify the run-list to be applied to the machine.
	   
       .. include:: ../../includes_node/includes_node_run_list.rst
       
       .. include:: ../../includes_node/includes_node_run_list_format.rst

   * - ``source_key``
     - Use to copy a private key, but apply a different ``format`` and ``password``. Use in conjunction with ``source_key_pass_phrase``` and ``source_key_path``.
   * - ``source_key_pass_phrase``
     - The pass phrase for the private key. Use in conjunction with ``source_key``` and ``source_key_path``.
   * - ``source_key_path``
     - The path to the private key. Use in conjunction with ``source_key``` and ``source_key_pass_phrase``.
   * - ``tags``
     - Use to specify the list of tags to be applied to the machine. Any tag not specified in this list will be removed.
   * - ``validator``
     - Use to specify if the |chef client| is a |chef validator|.







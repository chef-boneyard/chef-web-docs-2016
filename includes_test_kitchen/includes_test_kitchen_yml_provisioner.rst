.. The contents of this file are included in multiple topics.
.. This file should not be changed in a way that hinders its ability to appear in multiple documentation sets.


|kitchen| can configure the |chef zero| provisioner with the following |chef|-specific settings:

.. list-table::
   :widths: 200 300
   :header-rows: 1

   * - Setting
     - Description
   * - ``chef_omnibus_url``
     - The URL for an ``install.sh`` file. See http://docs.opscode.com/api_omnitruck.html#chef-client-downloads for more information about various URL options. Default value: ``https://www.getchef.com/chef/install.sh``.
   * - ``clients_path``
     - The relative path to the directory in which client data is located. This data must be defined as |json|.
   * - ``cookbook_files_glob``
     - A file glob that matches the contents of the uploaded cookbook.
   * - ``data_bags_path``
     - The relative path to a directory in which data bags and data bag items are defined. This data must be structured as if it were in the |chef repo|.
   * - ``encrypted_data_bag_secret_key_path``
     - The path to an RSA key file that is used to decrypt encrypted data bag items.
   * - ``environments_path``
     - The relative path to the directory in which environment data is located. This data must be defined as |json|.
   * - ``kitchen_root``
     - The directory in which |kitchen| will stage all content on the target node. This directory should be large enough to store all the content and must be writable. (Typically, this value does not need to be modified from the default value.) Default value: ``/tmp/kitchen``.
   * - ``nodes_path``
     - The relative path to the directory in which node data is located. This data must be defined as |json|.
   * - ``require_chef_omnibus``
     - Use to install the latest version of the |chef client| in a node. Set to ``true`` to install the latest version. When false, the ``chef_omnibus_url`` may be used to specifiy the version of the |chef client| to be installed. Default value: ``true``.
   * - ``roles_path``
     - The relative path to the directory in which role data is located. This data must be defined as |json|.

These settings may be added to the ``provisioner`` section of the |kitchen yml| file when |chef zero| is used as the provisioner.

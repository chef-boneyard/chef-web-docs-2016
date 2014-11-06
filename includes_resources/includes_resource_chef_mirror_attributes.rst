.. The contents of this file are included in multiple topics.
.. This file should not be changed in a way that hinders its ability to appear in multiple documentation sets.

|description resource_attributes_intro|

.. list-table::
   :widths: 150 450
   :header-rows: 1

   * - Attribute
     - Description
   * - ``chef_repo_path``
     - |path chef_repo|
   * - ``chef_server``
     - |chef_server_url|
   * - ``concurrency``
     - The number of threads to run in-parallel. Default value: ``10``.
   * - ``freeze``
     - Use to freeze cookbooks upon upload to the mirrored location. When ``true``, cookbooks are frozen.
   * - ``no_diff``
     - Use to upload only new files.
   * - ``path``
     - A path to a directory in the |chef repo| to be mirrored. For example: ``nodes``, ``nodes/*``, ``/nodes/my_node``, ``*/*``, ``roles/base``, ``data/secrets``, ``cookbooks/apache2``, and so on.
   * - ``purge``
     - Use to remove objects that have been deleted locally from the mirrored location. For example, when used with the ``:upload`` action, cookbooks that exist in the mirrored location, but do not exist locally, will be deleted.
   * - ``versioned_cookbooks``
     - |versioned_cookbooks| Defaults to ``true`` when ``chef_repo_path`` is specified, but this attribute is not.


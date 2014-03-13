.. The contents of this file are included in multiple topics.
.. This file should not be changed in a way that hinders its ability to appear in multiple documentation sets.

|description resource_attributes_intro|

.. list-table::
   :widths: 150 450
   :header-rows: 1

   * - Attribute
     - Description
   * - ``atomic_update``
     - |atomic_update| Default value: ``true``.
   * - ``backup``
     - |backups_kept| Default value: ``5``.
   * - ``checksum``
     - Optional, see ``use_conditional_get``. |checksum file|
   * - ``force_unlink``
     - |force_unlink| Default value: ``false``.
   * - ``ftp_active_mode``
     - |ftp_active_mode| Default value: ``false``.
   * - ``group``
     - |windows group_identifier|
   * - ``headers``
     - |headers custom| Default value: ``{}``.
   * - ``inherits``
     - |windows| only. |inherits windows security| Default value: ``true``.
   * - ``manage_symlink_source``
     - |manage_symlink_source| Possible values: ``nil``, ``true``, or ``false``. When this value is set to ``nil``, the |chef client| will manage a symlink's source file and emit a warning. When this value is set to ``true``, the |chef client| will manage a symlink's source file and not emit a warning. Default value: ``nil``. The default value will be changed to ``false`` in a future version.
   * - ``mode``
     - |mode resource_file|
       
       The behavior is different depending on the platform.
       
       |unix|- and |linux|-based systems: |mode *nix|
       
       |windows|: |mode windows security|
   * - ``owner``
     - |owner windows security|	
   * - ``path``
     - |path file| Default value: the ``name`` of the resource block (see Syntax section above).
   * - ``provider``
     - Optional. |provider resource_parameter|
   * - ``rights``
     - |windows| only. |rights windows security|
   * - ``source``
     - Required. |source file_location| There are many ways to define the location of a source file. By using a path:
       
       .. code-block:: ruby
       
          source "http://couchdb.apache.org/img/sketch.png"
       
       By using a node attribute:
       
       .. code-block:: ruby
       
          source node['nginx']['foo123']['url']
       
       By using attributes to define paths:
       
       .. code-block:: ruby
       
          source "#{node['python']['url']}/#{version}/Python-#{version}.tar.bz2"
       
       By defining multiple paths for multiple locations:
       
       .. code-block:: ruby
       
          source "http://seapower/spring.png", "http://seapower/has.png", "http://seapower/sprung.png"
       
       By defining those same multiple paths as an array:
       
       .. code-block:: ruby
       
          source ["http://seapower/spring.png", "http://seapower/has.png", "http://seapower/sprung.png"]
       
       When multiple paths are specified, the |chef client| will attempt to download the files in the order listed, stopping after the first successful download.
   * - ``use_conditional_get``
     - |use conditional_get| Default value: ``true``.
   * - ``use_etag``
     - |use etag| Default value: ``true``.
   * - ``use_last_modified``
     - |use last_modified| Default value: ``true``.

.. The contents of this file are included in multiple topics.
.. This file should not be changed in a way that hinders its ability to appear in multiple documentation sets.

This lightweight resource provider has the following attributes:

.. list-table::
   :widths: 200 300
   :header-rows: 1

   * - Attribute
     - Description
   * - ``:bundle_command``
     - 
   * - ``:bundler``
     - Indicates whether ``bundler`` will be used. If ``false``, |bundler| will never be used. This attribute defaults to ``true`` when a |gem| includes |bundler|.
   * - ``:bundler_deployment``
     - Indicates whether |bundler| will be run with the ``--deployment`` options. This attribute defaults to ``true`` when a |gemfilelock| is present.
   * - ``:bundler_without_groups``
     - An array of |bundler| groups to skip.
   * - ``:database_master_role``
     - The name of a role. During a |chef| run, a search will be performed to find a node with the same name as this value in the same environment as the current role. If a node is found, it's IP address will be used when rendering the ``database.yml`` file.
   * - ``:database_template``
     - The name of a template that will be rendered to create the ``database.yml`` file. Default value: ``database.yml.erb``.
   * - ``:gems``
     - An array of |gems| to be installed.
   * - ``:precompile_assets``
     - Indicates whether assets will be pre-compiled. Unless this attribute is specified, |chef| will attempt to auto-detect whether the pipeline is in use by looking in ``config/assets.yml``.

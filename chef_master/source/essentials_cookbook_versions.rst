=====================================================
About Versions
=====================================================

.. include:: ../../includes_cookbooks/includes_cookbooks_version.rst

.. list-table::
   :widths: 150 450
   :header-rows: 1

   * - Topic
     - Description
   * - :doc:`essentials_cookbook_versions_syntax`
     - A cookbook version always takes the form x.y.z, where x, y, and z are decimal numbers that are used to represent major (x), minor (y), and patch (z) versions.
   * - :doc:`essentials_cookbook_versions_constraints`
     - A version constraint is a string that combines the cookbook version syntax with an operator. All of the most common operators can be used when referring to cookbook versions.
   * - :doc:`essentials_cookbook_versions_metadata`
     - Every cookbook requires a small amount of metadata. This metadata provides hints to the Chef server so that cookbooks are deployed to each node correctly.
   * - :doc:`essentials_cookbook_versions_environments`
     - An environment can use version constraints to specify a list of allowed cookbook versions by specifying the cookbook’s name along with the version constraint.
   * - :doc:`essentials_cookbook_versions_run_lists`
     - A version constraint can be specified for recipe items that are part of a run-list.
   * - :doc:`essentials_cookbook_versions_freeze`
     - A cookbook version can be frozen, which will prevent updates from being made to that version of a cookbook.
   * - :doc:`essentials_cookbook_versions_version_control`
     - Cookbooks should be stored in some type of version source control.

.. toctree::
   :hidden:

   essentials_cookbook_versions_syntax
   essentials_cookbook_versions_constraints
   essentials_cookbook_versions_metadata
   essentials_cookbook_versions_environments
   essentials_cookbook_versions_run_lists
   essentials_cookbook_versions_freeze
   essentials_cookbook_versions_version_control

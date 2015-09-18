.. The contents of this file are included in multiple topics.
.. This file should not be changed in a way that hinders its ability to appear in multiple documentation sets.


The following |chef delivery|-specific helpers can be used in recipes:

.. list-table::
   :widths: 200 300
   :header-rows: 1

   * - Helper
     - Description
   * - ``bumped_version?``
     - Determines if files in a cookbook have been modified, and then to ensure that a cookbook's version is updated in its |metadata rb| file.
   * - ``changed_cookbooks``
     - Gets a list of cookbooks that have been modified.
   * - ``changed_files``
     - Gets a list of files that have been modified.
   * - ``delivery_chef_server``
     - Returns a |ruby hash| that contains details about how to talk to the |chef server|.
   * - ``delivery_environment``
     - Gets the name of the standard environment.
   * - ``foodcritic_tags``
     - Gets the list of |foodcritic| tags that are applied to a node.
   * - ``get_acceptance_environment``
     - Gets the name of the acceptance environment.
   * - ``get_project_secrets``
     - Gets the data bag from the |chef server| in which secrets used by this project are stored.
   * - ``has_kitchen_tests?``
     - Determines if a |kitchen yml| file exists in a cookbook.
   * - ``has_spec_tests?``
     - Determines if tests exist in the ``/spec`` directory in a cookbook.
   * - ``project_slug``
     - Returns a project slug.
   * - ``push_repo_to_github?``
     - Determines if a repo should be pushed to |github|.
   * - ``upload_cookbook_to_chef_server?``
     - Determines if a cookbook should be pushed to the |chef server|.

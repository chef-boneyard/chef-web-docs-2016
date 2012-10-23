.. The contents of this file are included in multiple topics.
.. This file should not be changed in a way that hinders its ability to appear in multiple documentation sets.

The |resource deploy| resource providers are used to determine whether to deploy based on whether the release directory in which the deployment is to be made actually exists. Use the following providers to use the |resource deploy| resource in a recipe:

.. list-table::
   :widths: 130 80 40 250
   :header-rows: 1

   * - Long name
     - Short name
     - Default?
     - Notes
   * - ``Chef::Provider::Deploy::TimstampedDeploy``
     - ``timestamped_deploy``. See below for more information.
     - Yes
     - This is the default provider for all platforms. 
   * - ``Chef::Provider::Deploy::Revision``
     - ``deploy_revision``, ``deploy_branch``
     - 
     -  See below for more information.

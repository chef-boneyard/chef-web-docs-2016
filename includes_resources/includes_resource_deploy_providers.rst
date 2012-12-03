.. The contents of this file are included in multiple topics.
.. This file should not be changed in a way that hinders its ability to appear in multiple documentation sets.

The |resource deploy| resource providers are used to determine whether to deploy based on whether the release directory in which the deployment is to be made actually exists. The following providers are available. Use the short name to use the provider in a recipe:

.. list-table::
   :widths: 150 80 320
   :header-rows: 1

   * - Long name
     - Short name
     - Notes
   * - ``Chef::Provider::Deploy``
     - ``deploy``
     - When this short name is used, |chef| will determine the provider during the |chef| run.
   * - ``Chef::Provider::Deploy::Revision``
     - ``deploy_branch``
     -  See below for more information.
   * - ``Chef::Provider::Deploy::Revision``
     - ``deploy_revision``
     -  See below for more information.
   * - ``Chef::Provider::Deploy::TimestampedDeploy``
     - ``timestamped_deploy``
     - This is the default provider for all platforms. See below for more information.



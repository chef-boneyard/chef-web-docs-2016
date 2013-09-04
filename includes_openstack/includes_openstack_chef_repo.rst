.. The contents of this file are included in multiple topics.
.. This file should not be changed in a way that hinders its ability to appear in multiple documentation sets.

The |chef repo openstack| contains examples of the roles, environments and other supporting files for deploying an |openstack grizzly| reference architecture using |chef|: https://github.com/stackforge/openstack-chef-repo.

.. list-table::
   :widths: 150 450
   :header-rows: 1

   * - Dependencies
     - Description
   * - |berkshelf|
     - The |chef repo openstack| uses |berkshelf| (https://berkshelf.com) to manage downloading all of the proper cookbook versions, whether from |git| or from the |opscode| community website (https://community.opscode.com). The preference is to eventually upstream all cookbook dependencies to the |opscode| community website. A .berksfile (the file type used by |berkshelf|) lists the current cookbook dependencies.
   * - Spiceweasel
     - There is a `Spiceweasel infrastructure.yml <https://github.com/mattray/spiceweasel>`_ manifest documenting all of the environments, roles and data bags used by the repository. To see the commands necessary to push all of the files to the |chef server|, run the following command:
       .. code-block:: bash

          $ spiceweasel infrastructure.yml

       To deploy the repository to the |chef server|, run the following command:

       .. code-block:: bash

          $ spiceweasel -e infrastructure.yml

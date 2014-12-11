.. THIS PAGE DOCUMENTS chef-client version 11.0

=====================================================
chef-solo 
=====================================================

.. warning:: The |chef client| now `includes an option called local mode <http://docs.chef.io/ctl_chef_client.html#run-in-local-mode>`_ (``--local-mode`` or ``-z``), which runs the |chef client| against the |chef repo| on the local machine as if it were running against a |chef server|. Local mode was added to the |chef client| in the 11.8 release. If you are running that version of the |chef client| (or later), you should use local mode instead of using |chef solo|.

.. include:: ../../includes_chef_solo/includes_chef_solo_11-4.rst

.. note:: |chef solo| is configured using the :doc:`chef-solo (executable) </ctl_chef_solo>`.

Cookbooks
-----------------------------------------------------
.. include:: ../../includes_chef_solo/includes_chef_solo_cookbooks.rst

Attributes
-----------------------------------------------------
.. include:: ../../includes_chef_solo/includes_chef_solo_attributes.rst

Data Bags
-----------------------------------------------------
.. include:: ../../includes_chef_solo/includes_chef_solo_data_bags.rst

Roles
-----------------------------------------------------
.. include:: ../../includes_chef_solo/includes_chef_solo_roles.rst

Environments
-----------------------------------------------------
.. include:: ../../includes_chef_solo/includes_chef_solo_11-4_environments.rst


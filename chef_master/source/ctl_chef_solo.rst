=====================================================
chef-solo
=====================================================

.. include:: ../../includes_chef_solo/includes_chef_solo.rst

.. include:: ../../includes_ctl_chef_solo/includes_ctl_chef_solo.rst

Options
-----------------------------------------------------
.. include:: ../../includes_ctl_chef_solo/includes_ctl_chef_solo_options.rst

Examples
-----------------------------------------------------
**Use a URL**

.. code-block:: bash

   $ chef-solo -c ~/solo.rb -j ~/node.json -r http://www.example.com/chef-solo.tar.gz

where ``-r`` uses the |resource remote_file| resource to retrieve the |tar gz| archive into the ``file_cache_path``, and then extract it to ``cookbooks_path``.

**Use a directory**

.. code-block:: bash

   $ chef-solo -c ~/solo.rb -j ~/node.json

where the ``-r URL`` option is not used. |chef solo| will look in the |solo rb| file to determine the directory in which cookbooks are located.

**Use a URL for cookbook and JSON data**

.. code-block:: bash

   $ chef-solo -c ~/solo.rb -j http://www.example.com/node.json -r http://www.example.com/chef-solo.tar.gz

where ``-r`` corresponds to ``recipe_url`` and ``-j`` corresponds to ``json_attribs``, both of which are configuration options in |solo rb|.









You can create the solo.rb in /etc/chef/solo.rb instead, as chef-solo will look there by default, thus making the '-c ~/solo.rb' optional.

**xxxxx**

.. code-block:: bash

   $ xxxxx

Remember: Chef Solo is disconnected from a Chef Server
There is no authentication, no authorization, no search indexes, no persistent attributes. It's just the bare ability to execute Cookbooks and Data Bags.
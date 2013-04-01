=====================================================
knife diff
=====================================================

.. include:: ../../includes_knife/includes_knife_diff.rst

**Syntax**

.. include:: ../../includes_knife/includes_knife_diff_syntax.rst

**Options**

.. include:: ../../includes_knife/includes_knife_diff_options.rst

**knife.rb File Settings**

.. include:: ../../includes_knife/includes_knife_using_knife_rb.rst

..note:: See :doc:`knife.rb </config_rb_knife>` for more information about how to add optional settings to the |knife rb| file.

.. include:: ../../includes_knife/includes_knife_diff_settings.rst

**Examples**

For example, to compare the differences between the local |chef| repository and the files that are on the |chef server|, enter:

.. code-block:: bash

   $ knife diff

To compare the "base.json" role to a "webserver.json" role, enter:

.. code-block:: bash

   $ knife diff roles/base.json roles/webserver.json

To diff a node named ``node-lb`` and then only return files that have been added, deleted, modified, or changed, enter:

.. code-block:: bash

   $ knife diff --name-status node-lb

to return something like:

.. code-block:: bash

   node-lb/recipes/eip.rb
   node-lb/recipes/heartbeat-int.rb
   node-lb/templates/default/corpsite.conf.erb
   node-lb/files/default/wildcard.node.com.crt
   node-lb/files/default/wildcard.node.com.crt-2009
   node-lb/files/default/wildcard.node.com.key
   node-lb/.gitignore
   node-lb/Rakefile




=====================================================
knife cookbook
=====================================================

.. include:: ../../includes_cookbooks/includes_cookbooks.rst

.. include:: ../../includes_knife/includes_knife_cookbook.rst

.. note:: Review the list of :doc:`common options </knife_common_options>` available to this (and all) |knife| subcommands and plugins.

bulk delete
=====================================================
.. include:: ../../includes_knife/includes_knife_cookbook_bulk_delete.rst

Syntax
-----------------------------------------------------
.. include:: ../../includes_knife/includes_knife_cookbook_bulk_delete_syntax.rst

Options
-----------------------------------------------------
.. include:: ../../includes_knife/includes_knife_cookbook_bulk_delete_options.rst

knife.rb Settings
+++++++++++++++++++++++++++++++++++++++++++++++++++++
.. note:: See :doc:`knife.rb </config_rb_knife>` for more information about how to add optional settings to the |knife rb| file.

.. include:: ../../includes_knife/includes_knife_cookbook_bulk_delete_settings.rst

Examples
-----------------------------------------------------
For example:

.. code-block:: bash

   $ knife cookbook bulk delete "^[0-9]{3}$" -p

create
=====================================================
.. include:: ../../includes_knife/includes_knife_cookbook_create.rst

Syntax
-----------------------------------------------------
.. include:: ../../includes_knife/includes_knife_cookbook_create_syntax.rst

Options
-----------------------------------------------------
.. include:: ../../includes_knife/includes_knife_cookbook_create_options.rst

knife.rb Settings
+++++++++++++++++++++++++++++++++++++++++++++++++++++
.. note:: See :doc:`knife.rb </config_rb_knife>` for more information about how to add optional settings to the |knife rb| file.

.. include:: ../../includes_knife/includes_knife_cookbook_create_settings.rst

Examples
-----------------------------------------------------
For example, to create a cookbook named "my_cookbook" with copyright, email, license, and readme format options specified, enter:

.. code-block:: bash

   $ knife cookbook create my_cookbook -c "My Name" -e "my@email.com" -l apachev2 -r md

to return something like:

.. code-block:: bash

   ** Creating cookbook my_cookbook
   ** Creating README for cookbook: my_cookbook
   ** Creating metadata for cookbook: my_cookbook


delete
=====================================================
.. include:: ../../includes_knife/includes_knife_cookbook_delete.rst

Syntax
-----------------------------------------------------
.. include:: ../../includes_knife/includes_knife_cookbook_delete_syntax.rst

Options
-----------------------------------------------------
.. include:: ../../includes_knife/includes_knife_cookbook_delete_options.rst

knife.rb Settings
+++++++++++++++++++++++++++++++++++++++++++++++++++++
.. note:: See :doc:`knife.rb </config_rb_knife>` for more information about how to add optional settings to the |knife rb| file.

.. include:: ../../includes_knife/includes_knife_cookbook_delete_settings.rst

Examples
-----------------------------------------------------
For example, to delete version "0.8" from a cookbook named "smartmon", enter:

.. code-block:: bash

   $ knife cookbook delete smartmon version 0.8

Type ``Y`` to confirm a deletion.

download
=====================================================
.. include:: ../../includes_knife/includes_knife_cookbook_download.rst

Syntax
-----------------------------------------------------
.. include:: ../../includes_knife/includes_knife_cookbook_download_syntax.rst

Options
-----------------------------------------------------
.. include:: ../../includes_knife/includes_knife_cookbook_download_options.rst

knife.rb Settings
+++++++++++++++++++++++++++++++++++++++++++++++++++++
.. note:: See :doc:`knife.rb </config_rb_knife>` for more information about how to add optional settings to the |knife rb| file.

.. include:: ../../includes_knife/includes_knife_cookbook_download_settings.rst

Examples
-----------------------------------------------------
For example, to download a cookbook named "smartmon", enter:

.. code-block:: bash

   $ knife cookbook download smartmon

list
=====================================================
.. include:: ../../includes_knife/includes_knife_cookbook_list.rst

Syntax
-----------------------------------------------------
.. include:: ../../includes_knife/includes_knife_cookbook_list_syntax.rst

Options
-----------------------------------------------------
.. include:: ../../includes_knife/includes_knife_cookbook_list_options.rst

knife.rb Settings
+++++++++++++++++++++++++++++++++++++++++++++++++++++
.. note:: See :doc:`knife.rb </config_rb_knife>` for more information about how to add optional settings to the |knife rb| file.

.. include:: ../../includes_knife/includes_knife_cookbook_list_settings.rst

Examples
-----------------------------------------------------
For example:

.. code-block:: bash

   $ knife cookbook list

metadata
=====================================================
.. include:: ../../includes_knife/includes_knife_cookbook_metadata.rst

Syntax
-----------------------------------------------------
.. include:: ../../includes_knife/includes_knife_cookbook_metadata_syntax.rst

Options
-----------------------------------------------------
.. include:: ../../includes_knife/includes_knife_cookbook_metadata_options.rst

knife.rb Settings
+++++++++++++++++++++++++++++++++++++++++++++++++++++
.. note:: See :doc:`knife.rb </config_rb_knife>` for more information about how to add optional settings to the |knife rb| file.

.. include:: ../../includes_knife/includes_knife_cookbook_metadata_settings.rst

Examples
-----------------------------------------------------
For example, to generate metadata for all cookbooks:

.. code-block:: bash

   $ knife cookbook metadata -a

metadata from file
=====================================================
.. include:: ../../includes_knife/includes_knife_cookbook_metadata_from_file.rst

Syntax
-----------------------------------------------------
.. include:: ../../includes_knife/includes_knife_cookbook_metadata_from_file_syntax.rst

Options
-----------------------------------------------------
|no_options|

Examples
-----------------------------------------------------
For example:

.. code-block:: bash

   $ knife cookbook metadta from file /path/to/file

show
=====================================================
.. include:: ../../includes_knife/includes_knife_cookbook_show.rst

Syntax
-----------------------------------------------------
.. include:: ../../includes_knife/includes_knife_cookbook_show_syntax.rst

Options
-----------------------------------------------------
.. include:: ../../includes_knife/includes_knife_cookbook_show_options.rst

knife.rb Settings
+++++++++++++++++++++++++++++++++++++++++++++++++++++
.. note:: See :doc:`knife.rb </config_rb_knife>` for more information about how to add optional settings to the |knife rb| file.

.. include:: ../../includes_knife/includes_knife_cookbook_show_settings.rst

Examples
-----------------------------------------------------
For example, to get the list of available versions of a cookbook named "getting-started", enter:

.. code-block:: bash

   $ knife cookbook show getting-started

to return something like:

.. code-block:: bash

   getting-started   0.3.0  0.2.0
   
To show a list of data about a cookbook using the name of the cookbook and the version, enter:

.. code-block:: bash

   $ knife cookbook show getting-started 0.3.0

to return something like:

.. code-block:: bash

   attributes:
     checksum:     fa0fc4abf3f6787aeb5c3c5c35de667c
     name:         default.rb
     path:         attributes/default.rb
     specificity:  default
     url:          https://somelongurlhere.com
   chef_type:      cookbook_version
   cookbook_name:  getting-started
   definitions:    []
   files:          []
   frozen?:        false
   json_class:     Chef::CookbookVersion
   libraries:      []

To only view data about "templates", enter:

.. code-block:: bash

   $ knife cookbook show getting-started 0.3.0 templates

to return something like:

.. code-block:: bash

   checksum:     a29d6f254577b830091f140c3a78b1fe
   name:         chef-getting-started.txt.erb
   path:         templates/default/chef-getting-started.txt.erb
   specificity:  default
   url:          https://someurlhere.com

To see if a cookbook named "redis" with a version number of "0.1.6" is frozen, enter:

.. code-block:: bash

   $ knife cookbook show redis 0.1.6 | grep frozen

If the cookbook is frozen, something like the following is returned:

.. code-block:: bash

   frozen?:        true

To view information in |json| format, use the ``-F`` common option as part of the command like this:

.. code-block:: bash

   $ knife cookbook show getting-started -F json

Other formats available include ``text``, ``yaml``, and ``pp``.


test
=====================================================
.. include:: ../../includes_knife/includes_knife_cookbook_test.rst

Syntax
-----------------------------------------------------
.. include:: ../../includes_knife/includes_knife_cookbook_test_syntax.rst

Options
-----------------------------------------------------
.. include:: ../../includes_knife/includes_knife_cookbook_test_options.rst

knife.rb Settings
+++++++++++++++++++++++++++++++++++++++++++++++++++++
.. note:: See :doc:`knife.rb </config_rb_knife>` for more information about how to add optional settings to the |knife rb| file.

.. include:: ../../includes_knife/includes_knife_cookbook_test_settings.rst

Examples
-----------------------------------------------------
For example, to test a cookbook named "getting-started", enter:

.. code-block:: bash

   $ knife cookbook test getting-started

upload
=====================================================
.. include:: ../../includes_knife/includes_knife_cookbook_upload.rst

Syntax
-----------------------------------------------------
.. include:: ../../includes_knife/includes_knife_cookbook_upload_syntax.rst

Options
-----------------------------------------------------
.. include:: ../../includes_knife/includes_knife_cookbook_upload_options.rst

knife.rb Settings
+++++++++++++++++++++++++++++++++++++++++++++++++++++
.. note:: See :doc:`knife.rb </config_rb_knife>` for more information about how to add optional settings to the |knife rb| file.

.. include:: ../../includes_knife/includes_knife_cookbook_upload_settings.rst

Examples
-----------------------------------------------------
For example:

.. code-block:: bash

   $ knife cookbook upload getting-started

To upload a cookbook, and then prevent other users from being able to make changes to it, enter:

.. code-block:: bash

   $ knife cookbook upload redis --freeze

To return:

.. code-block:: bash

   Uploading redis...
   Upload completed

If a cookbook is frozen and the ``--force`` option is not specified, |knife| will return an error message similar to the following:

.. code-block:: bash

   Uploading redis...
   ERROR: Version 0.1.6 of cookbook redis is frozen. Use --force to override.




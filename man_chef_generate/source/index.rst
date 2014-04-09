=====================================================
chef generate
=====================================================

.. include:: ../../includes_ctl_chef/includes_ctl_chef.rst

The ``chef generate`` subcommand is used to generate applications, cookbooks, and cookbook objects (attribute files, files, lightweight resources, recipes, and templates).

**Syntax**

This subcommand has the following syntax:

.. code-block:: bash

   $ chef generate OBJECT (options)

where ``OBJECT`` is one of the following: ``app``, ``attribute``, ``cookbook``, ``file``, ``lwrp``, ``recipe``, or ``template``.

For example, to generate an app:

.. code-block:: bash

   $ chef generate app APP_NAME (options)

To generate an cookbook:

.. code-block:: bash

   $ chef generate cookbook COOKBOOK_NAME (options)

To generate an attribute, file, lwrp, recipe, or template:

.. code-block:: bash

   $ chef generate OBJETCT COOKBOOK_PATH COOKBOOK NAME (options)

**Options**

This subcommand has the following options:

``-s SOURCE_FILE``, ``--source SOURCE_FILE``
   ``chef generate file`` and ``chef generate template`` only. Use to copy the contents from a source file.

``-h``, ``--help``
   |help subcommand|

``-v``, ``--version``
   |version chef|

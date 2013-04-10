=====================================================
knife show
=====================================================

.. include:: ../../includes_knife/includes_knife_show.rst

**Syntax**

.. include:: ../../includes_knife/includes_knife_show_syntax.rst

**Options**

.. note:: Review the list of :doc:`common options </knife_common_options>` available to this (and all) |knife| subcommands and plugins.

|no_options|

**Examples**

For example, to show all cookbooks in the ``cookbooks/`` directory:

.. code-block:: bash

   $ knife show cookbooks/

or, (if already in the ``cookbooks/`` directory in the local |chef| repository):

.. code-block:: bash

   $ knife show

To show roles and environments:

.. code-block:: bash

   $ knife show roles/ environments/


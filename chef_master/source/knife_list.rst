=====================================================
knife list
=====================================================

.. include:: ../../includes_knife/includes_knife_list.rst

**Syntax**

.. include:: ../../includes_knife/includes_knife_list_syntax.rst

**Options**

.. include:: ../../includes_knife/includes_knife_list_options.rst

**Examples**

For example, to view a list of roles on the |chef server|:

.. code-block:: bash

   $ knife list roles/

To view a list of roles and environments on the |chef server|:

.. code-block:: bash

   $ knife list roles/ environments/

To view a list of absolutely everything on the |chef server|:

.. code-block:: bash

   $ knife list -R /



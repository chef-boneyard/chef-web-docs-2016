=====================================================
knife list
=====================================================

.. include:: ../../includes_knife/includes_knife_list.rst

**Syntax**

.. include:: ../../includes_knife/includes_knife_list_syntax.rst

**Options**

.. include:: ../../includes_knife/includes_knife_list_options.rst

**knife.rb File Settings**

.. include:: ../../includes_knife/includes_knife_using_knife_rb.rst

.. include:: ../../includes_knife/includes_knife_list_settings.rst

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



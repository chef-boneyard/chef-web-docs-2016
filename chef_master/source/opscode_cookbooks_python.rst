=====================================================
python Cookbook
=====================================================

.. include:: ../../includes_cookbooks_opscode/includes_cookbooks_opscode_python.rst

.. note:: This cookbook is available from |github|: https://github.com/opscode-cookbooks/python.

Attributes
-----------------------------------------------------
.. include:: ../../includes_cookbooks_opscode/includes_cookbooks_opscode_python_attributes.rst

Lightweight Resources
-----------------------------------------------------
.. include:: ../../includes_cookbooks/includes_cookbooks_lightweight_resource.rst

python_pip
+++++++++++++++++++++++++++++++++++++++++++++++++++++
.. include:: ../../includes_lwrp/includes_lwrp_python_pip.rst

Actions
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
.. include:: ../../includes_lwrp/includes_lwrp_python_pip_actions.rst

Attributes
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
.. include:: ../../includes_lwrp/includes_lwrp_python_pip_attributes.rst

python_virtualenv
+++++++++++++++++++++++++++++++++++++++++++++++++++++
.. include:: ../../includes_lwrp/includes_lwrp_python_virtualenv.rst

Actions
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
.. include:: ../../includes_lwrp/includes_lwrp_python_virtualenv_actions.rst

Attributes
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
.. include:: ../../includes_lwrp/includes_lwrp_python_virtualenv_attributes.rst

Usage
-----------------------------------------------------
The following sections describe the usage options that are available in this cookbook:

.. list-table::
   :widths: 200 300
   :header-rows: 1

   * - Usage
     - Description
   * - ``default``
     - .. include:: ../../includes_cookbooks_opscode/includes_cookbooks_opscode_python_usage_default.rst
   * - ``package``
     - .. include:: ../../includes_cookbooks_opscode/includes_cookbooks_opscode_python_usage_package.rst
   * - ``pip``
     - .. include:: ../../includes_cookbooks_opscode/includes_cookbooks_opscode_python_usage_pip.rst
   * - ``source``
     - .. include:: ../../includes_cookbooks_opscode/includes_cookbooks_opscode_python_usage_source.rst
   * - ``virtualenv``
     - .. include:: ../../includes_cookbooks_opscode/includes_cookbooks_opscode_python_usage_virtualenv.rst

Examples
-----------------------------------------------------
.. This is a temporary home for examples for this cookbook.

**Create a Python virtual environment**

.. include:: ../../step_lwrp/step_lwrp_python_virtualenv_create_python.rst

**Create an Ubuntu virtual environment**

.. include:: ../../step_lwrp/step_lwrp_python_virtualenv_create_ubuntu.rst

**Install gunicorn**

.. include:: ../../step_lwrp/step_lwrp_python_pip_install_gunicorn.rst

**Install a specific version of pip**

.. include:: ../../step_lwrp/step_lwrp_python_pip_install_specific_pip.rst

**Install pip to a target virtual environment**

.. include:: ../../step_lwrp/step_lwrp_python_pip_target_virtualenv.rst

**Use pip with a core package resource**

.. include:: ../../step_lwrp/step_lwrp_python_pip_use_with_core_package_resource.rst






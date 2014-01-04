=====================================================
python Lightweight Resources
=====================================================

|cookbook name python|

The |cookbook python| cookbook contains the following resources: ``python_pip`` and ``python_virtualenv``.

.. note:: These resources are part of the |cookbook python| cookbook: https://github.com/opscode-cookbooks/python.

python_pip
=====================================================
.. include:: ../../includes_lwrp/includes_lwrp_python_pip.rst

Actions
-----------------------------------------------------
.. include:: ../../includes_lwrp/includes_lwrp_python_pip_actions.rst

Attributes
-----------------------------------------------------
.. include:: ../../includes_lwrp/includes_lwrp_python_pip_attributes.rst

Examples
-----------------------------------------------------
The following examples show how to use the ``python_pip`` resource:

**Install Gunicorn**

.. include:: ../../step_lwrp/step_lwrp_python_pip_install_gunicorn.rst

**Install a specific version of pip**

.. include:: ../../step_lwrp/step_lwrp_python_pip_install_specific_pip.rst

**Target a Gunicorn virtual environment**

.. include:: ../../step_lwrp/step_lwrp_python_pip_target_virtualenv.rst

**Use with the package resource**

.. include:: ../../step_lwrp/step_lwrp_python_pip_use_with_core_package_resource.rst

python_virtualenv
=====================================================
.. include:: ../../includes_lwrp/includes_lwrp_python_virtualenv.rst

Actions
-----------------------------------------------------
.. include:: ../../includes_lwrp/includes_lwrp_python_virtualenv_actions.rst

Attributes
-----------------------------------------------------
.. include:: ../../includes_lwrp/includes_lwrp_python_virtualenv_attributes.rst

Examples
-----------------------------------------------------
The following examples show how to use the ``python_virtualenv`` resource:

**Create a virtual environment**

.. include:: ../../step_lwrp/step_lwrp_python_virtualenv_create_python.rst

**Create a virtual environment owned by an Ubuntu user**

.. include:: ../../step_lwrp/step_lwrp_python_virtualenv_create_ubuntu.rst
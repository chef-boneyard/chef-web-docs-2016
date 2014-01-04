=====================================================
gunicorn Lightweight Resources
=====================================================

|gunicorn desc| |cookbook name gunicorn|

The |cookbook gunicorn| cookbook contains the following resources: ``gunicorn_config`` and ``gunicorn_install``.

.. note:: These resources are part of the |cookbook gunicorn| cookbook: https://github.com/opscode-cookbooks/gunicorn.

gunicorn_config
=====================================================
.. include:: ../../includes_lwrp/includes_lwrp_gunicorn_config.rst

Actions
-----------------------------------------------------
.. include:: ../../includes_lwrp/includes_lwrp_gunicorn_config_actions.rst

Attributes
-----------------------------------------------------
.. include:: ../../includes_lwrp/includes_lwrp_gunicorn_config_attributes.rst

Examples
-----------------------------------------------------
The following examples show how to use the ``gunicorn_config`` resource:

**Create a configuration file**

.. include:: ../../step_lwrp/step_lwrp_gunicorn_config_create.rst

**Edit worker-related values**

.. include:: ../../step_lwrp/step_lwrp_gunicorn_config_edit_values.rst

**Use a pre_fork server hook**

.. include:: ../../step_lwrp/step_lwrp_gunicorn_config_sleep_before_fork.rst


gunicorn_install
=====================================================
.. include:: ../../includes_lwrp/includes_lwrp_gunicorn_install.rst

Actions
-----------------------------------------------------
.. include:: ../../includes_lwrp/includes_lwrp_gunicorn_install_actions.rst

Attributes
-----------------------------------------------------
.. include:: ../../includes_lwrp/includes_lwrp_gunicorn_install_attributes.rst

Examples
-----------------------------------------------------
The following example shows how to use the ``gunicorn_install`` resource:

**Install to a specified virtual environment**

.. include:: ../../step_lwrp/step_lwrp_gunicorn_install_virtual_env.rst
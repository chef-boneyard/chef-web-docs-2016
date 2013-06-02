=====================================================
script
=====================================================

.. include:: ../../includes_resources/includes_resource_generic.rst

.. include:: ../../includes_resources/includes_resource_script.rst

This resource is the base resource for several other resources used for scripting on specific platforms. For more information about specific resources for specific platforms, see the following topics:

* :doc:`bash </resource_bash>`
* :doc:`csh </resource_csh>`
* :doc:`perl </resource_perl>`
* :doc:`python </resource_python>`
* :doc:`ruby </resource_ruby>`

Syntax
=====================================================
.. include:: ../../includes_resources/includes_resource_script_syntax.rst

Actions
=====================================================
.. include:: ../../includes_resources/includes_resource_script_actions.rst

Attributes
=====================================================
.. include:: ../../includes_resources/includes_resource_script_attributes.rst

Providers
=====================================================
.. include:: ../../includes_resources/includes_resource_script_providers.rst

Examples
=====================================================
|generic resource statement|

**Use a named provider to run a script**

.. include:: ../../step_resource/step_resource_script_bash_provider_and_interpreter.rst

**Run a script**

.. include:: ../../step_resource/step_resource_script_bash_script.rst

**Install a file from a remote location using bash**

.. include:: ../../step_resource/step_resource_remote_file_install_with_bash.rst

**Install an application from git using bash**

.. include:: ../../step_resource/step_resource_scm_use_bash_and_ruby_build.rst

**Store certain settings**

.. include:: ../../step_resource/step_resource_remote_file_store_certain_settings.rst

=====================================================
InSpec DSL
=====================================================

.. include:: ../../includes_ctl_inspec/includes_ctl_inspec.rst

.. include:: ../../includes_dsl_inspec/includes_dsl_inspec.rst

The following sections describe the syntax and show some simple examples of using the |inspec resource| framework to define tests.

Syntax
=====================================================
.. include:: ../../includes_dsl_inspec/includes_dsl_inspec_syntax.rst

|chef compliance| Webui
-----------------------------------------------------
.. include:: ../../includes_dsl_inspec/includes_dsl_inspec_webui.rst

InSpec Audit Resources
=====================================================
.. include:: ../../includes_inspec/includes_inspec_resources_list.rst

Examples
=====================================================
The following examples show simple compliance tests built using a single ``rule`` block.

Test the System Event Log
-----------------------------------------------------
.. include:: ../../includes_dsl_inspec/includes_dsl_inspec_example_test_system_event_log.rst

Are |postgresql| passwords empty?
-----------------------------------------------------
.. include:: ../../includes_dsl_inspec/includes_dsl_inspec_example_postgresql_password_empty.rst

Are |mysql| passwords in ENV?
-----------------------------------------------------
.. include:: ../../includes_dsl_inspec/includes_dsl_inspec_example_mysql_password_env.rst

Is /etc/ssh a Directory?
-----------------------------------------------------
.. include:: ../../includes_dsl_inspec/includes_dsl_inspec_example_etc_ssh_directory.rst

Is |apache| running?
-----------------------------------------------------
.. include:: ../../includes_dsl_inspec/includes_dsl_inspec_example_apache_running.rst

Have critical files changed?
-----------------------------------------------------
.. include:: ../../includes_dsl_inspec/includes_dsl_inspec_example_critical_files_changed.rst

Is strong encryption required?
-----------------------------------------------------
.. include:: ../../includes_dsl_inspec/includes_dsl_inspec_example_require_strong_encryption.rst

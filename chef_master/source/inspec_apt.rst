=====================================================
apt
=====================================================

.. include:: ../../includes_inspec_resources/includes_inspec_resource_apt.rst

Syntax
-----------------------------------------------------
.. include:: ../../includes_inspec_resources/includes_inspec_resource_apt_syntax.rst

Matchers
-----------------------------------------------------
|inspec resource matcher|

be_enabled
+++++++++++++++++++++++++++++++++++++++++++++++++++++
.. include:: ../../includes_inspec_resources/includes_inspec_resource_apt_matcher_be_enabled.rst

exist
+++++++++++++++++++++++++++++++++++++++++++++++++++++
.. include:: ../../includes_inspec_resources/includes_inspec_resource_apt_matcher_exist.rst

Examples
-----------------------------------------------------
The following examples show how to use this InSpec resource in a test.

**Test if Ubuntu is updated to the latest stable Juju package**

.. include:: ../../step_inspec/step_inspec_apache_conf_apt_ubuntu_stable_juju.rst

**Test if Nginx is updated to the latest stable package**

.. include:: ../../step_inspec/step_inspec_apache_conf_apt_ubuntu_stable_nginx.rst

**Verify that a repository exists and is enabled**

.. include:: ../../step_inspec/step_inspec_apache_conf_apt_repo_exists.rst

**Verify that a repository is not present**

.. include:: ../../step_inspec/step_inspec_apache_conf_apt_repo_not_present.rst

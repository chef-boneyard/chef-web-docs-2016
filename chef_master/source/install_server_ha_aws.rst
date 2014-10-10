.. This page is the Chef 12 server install page, for high availabilty in AWS.

=====================================================
High Availability: AWS
=====================================================

.. include:: ../../includes_install/includes_install_server_ha_aws.rst

Prerequisites
=====================================================
.. include:: ../../includes_install/includes_install_server_ha_aws_pre.rst

Primary Backend
=====================================================
.. include:: ../../includes_install/includes_install_server_ha_aws_primary.rst

Secondary Backend
=====================================================
.. include:: ../../includes_install/includes_install_server_ha_aws_secondary.rst

Verify Failover
=====================================================
.. include:: ../../includes_install/includes_install_server_ha_aws_verify.rst

Frontend Installation
=====================================================
.. include:: ../../includes_install/includes_install_server_ha_aws_frontend.rst

Enable Features
=====================================================
.. include:: ../../includes_ctl_chef_server/includes_ctl_chef_server_install_features.rst

**Use Downloads**

.. include:: ../../includes_ctl_chef_server/includes_ctl_chef_server_install_features_download.rst

**Use Local Packages**

.. include:: ../../includes_ctl_chef_server/includes_ctl_chef_server_install_features_manual.rst

Reference
=====================================================
The following sections show the |chef ha| settings as they appear in a |chef server rb| file and required permissions of the user in |amazon iam|.

|chef server rb|
-----------------------------------------------------
.. include:: ../../includes_install/includes_install_server_ha_aws_reference_config.rst

|amazon iam|
-----------------------------------------------------
.. include:: ../../includes_install/includes_install_server_ha_aws_reference_iam.rst
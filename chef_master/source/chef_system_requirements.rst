=====================================================
System Requirements
=====================================================

Before installing |chef|:

* Ensure that each machine that will be a node is running a :doc:`supported platform </supported_platforms>`
* Ensure that the machine that will run the |chef server| is sufficiently powerful
* Ensure that any network and firewall settings are configured correctly

Install and configure the |chef server|, then install and configure a workstation, and then run the bootstrap command from the workstation to install the |chef client| on each node.

|chef client|
=====================================================
.. include:: ../../includes_system_requirements/includes_system_requirements_client.rst

The |chef server_title|
=====================================================
The following sections describe the various requirements for the |chef server|.

Hosted |chef server_title|
-----------------------------------------------------
.. include:: ../../includes_system_requirements/includes_system_requirements_server_hosted.rst

|chef server_title|, On-premises
-----------------------------------------------------
.. include:: ../../includes_system_requirements/includes_system_requirements_server_hardware.rst

.. include:: ../../includes_system_requirements/includes_system_requirements_server_etc.rst

|chef dk_title|
=====================================================
The |chef dk| has the same requirements as the |chef client|.

=====================================================
aws Lightweight Resource
=====================================================

.. warning:: |note doc_version_11-4|

|cookbook name aws|

The |cookbook aws| cookbook contains the following lightweight resources: ``aws_ebs_volume``, ``aws_elastic_ip``, ``aws_elastic_lb``, and ``aws_resource_tag``.

.. note:: These lightweight resources are part of the |cookbook aws| cookbook (http://community.opscode.com/cookbooks/aws), which provides libraries, resources, and providers that can be used to configure and manage |amazon aws| components using the |amazon ec2| API.

|amazon aws| Credentials
=====================================================
.. include:: ../../includes_lwrp/includes_lwrp_aws_credentials.rst

aws_ebs_volume
=====================================================
.. include:: ../../includes_lwrp/includes_lwrp_aws_ebs_volume.rst

Actions
-----------------------------------------------------
.. include:: ../../includes_lwrp/includes_lwrp_aws_ebs_volume_actions.rst

Attributes
-----------------------------------------------------
.. include:: ../../includes_lwrp/includes_lwrp_aws_ebs_volume_attributes.rst

Examples
+++++++++++++++++++++++++++++++++++++++++++++++++++++
.. include:: ../../step_lwrp/step_lwrp_aws_ebs_volume_create_volume_attach_to_node.rst

.. include:: ../../step_lwrp/step_lwrp_aws_ebs_volume_create_volume_from_existing_snapshot.rst

.. include:: ../../step_lwrp/step_lwrp_aws_ebs_volume_prune_snapshots.rst

aws_elastic_ip
=====================================================
.. include:: ../../includes_lwrp/includes_lwrp_aws_elastic_ip.rst

Actions
-----------------------------------------------------
.. include:: ../../includes_lwrp/includes_lwrp_aws_elastic_ip_actions.rst

Attributes
-----------------------------------------------------
.. include:: ../../includes_lwrp/includes_lwrp_aws_elastic_ip_attributes.rst

Examples
-----------------------------------------------------
.. include:: ../../step_lwrp/step_lwrp_aws_elastic_ip_associate.rst

.. include:: ../../step_lwrp/step_lwrp_aws_elastic_ip_disassociate.rst


aws_elastic_lb
=====================================================
.. include:: ../../includes_lwrp/includes_lwrp_aws_elastic_lb.rst

Actions
-----------------------------------------------------
.. include:: ../../includes_lwrp/includes_lwrp_aws_elastic_lb_actions.rst

Attributes
-----------------------------------------------------
.. include:: ../../includes_lwrp/includes_lwrp_aws_elastic_lb_attributes.rst

Examples
-----------------------------------------------------
.. include:: ../../step_lwrp/step_lwrp_aws_elastic_lb_add.rst


aws_resource_tag
=====================================================
.. include:: ../../includes_lwrp/includes_lwrp_aws_resource_tag.rst

Actions
-----------------------------------------------------
.. include:: ../../includes_lwrp/includes_lwrp_aws_resource_tag_actions.rst

Attributes
-----------------------------------------------------
.. include:: ../../includes_lwrp/includes_lwrp_aws_resource_tag_attributes.rst

Examples
-----------------------------------------------------
.. include:: ../../step_lwrp/step_lwrp_aws_resource_tag_assign_to_node.rst

.. include:: ../../step_lwrp/step_lwrp_aws_resource_tag_assign_to_resources.rst
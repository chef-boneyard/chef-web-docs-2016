=====================================================
aws Resources
=====================================================

|cookbook name aws|

The |cookbook aws| cookbook contains the following resources: ``aws_ebs_volume``, ``aws_elastic_ip``, ``aws_elastic_lb``, and ``aws_resource_tag``.

.. note:: These resources are part of the |cookbook aws| cookbook: https://github.com/opscode-cookbooks/aws.

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
-----------------------------------------------------
The following examples show how to use the ``aws_ebs_volume`` resource:

**Create a volume, attach to a node**

.. include:: ../../step_lwrp/step_lwrp_aws_ebs_volume_create_volume_attach_to_node.rst

**Create a volume from an existing snapshot**

.. include:: ../../step_lwrp/step_lwrp_aws_ebs_volume_create_volume_from_existing_snapshot.rst

**Prune all snapshots (except for one)**

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
The following examples show how to use the ``aws_elastic_ip`` resource:

**Associate an IP address**

.. include:: ../../step_lwrp/step_lwrp_aws_elastic_ip_associate.rst

**Disassociate an IP address**

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
The following example shows how to use the ``aws_elastic_lb`` resource:

**Add a load balancer**

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
The following examples show how to use the ``aws_resource_tag`` resource:

**Assign tags to a node**

.. include:: ../../step_lwrp/step_lwrp_aws_resource_tag_assign_to_node.rst

**Assign tags to resources**

.. include:: ../../step_lwrp/step_lwrp_aws_resource_tag_assign_to_resources.rst
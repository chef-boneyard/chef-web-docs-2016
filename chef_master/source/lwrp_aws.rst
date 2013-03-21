=====================================================
aws Lightweight Resource
=====================================================

|cookbook name aws|

The ``aws`` cookbook contains the following lightweight resources: ``aws_ebs_volume``, ``aws_elastic_ip``, ``aws_elastic_lb``, and ``aws_resource_tag``.

|amazon aws| Credentials
=====================================================
.. include:: ../../includes_lwrp/includes_lwrp_aws_credentials.rst

aws_ebs_volume
=====================================================
.. include:: ../../includes_lwrp/includes_lwrp_aws_ebs_volume.rst

.. note:: This lightweight resource is part of the ``AWS`` cookbook (http://community.opscode.com/cookbooks/aws), which provides libraries, resources, and providers that can be used to configure and manage |amazon aws| components using the |amazon ec2| API.

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

.. note:: This lightweight resource is part of the ``AWS`` cookbook (http://community.opscode.com/cookbooks/aws), which provides libraries, resources, and providers that can be used to configure and manage |amazon aws| components using the |amazon ec2| API.

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

.. note:: This lightweight resource is part of the ``AWS`` cookbook (http://community.opscode.com/cookbooks/aws), which provides libraries, resources, and providers that can be used to configure and manage |amazon aws| components using the |amazon ec2| API.

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

.. note:: This lightweight resource is part of the ``AWS`` cookbook (http://community.opscode.com/cookbooks/aws), which provides libraries, resources, and providers that can be used to configure and manage |amazon aws| components using the |amazon ec2| API.

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
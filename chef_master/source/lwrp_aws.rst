=====================================================
aws
=====================================================

.. include:: ../../swaps/swap_desc_a.txt
.. include:: ../../swaps/swap_desc_b.txt
.. include:: ../../swaps/swap_desc_c.txt
.. include:: ../../swaps/swap_desc_d.txt
.. include:: ../../swaps/swap_desc_e.txt
.. include:: ../../swaps/swap_desc_f.txt
.. include:: ../../swaps/swap_desc_g.txt
.. include:: ../../swaps/swap_desc_h.txt
.. include:: ../../swaps/swap_desc_i.txt
.. include:: ../../swaps/swap_desc_j.txt
.. include:: ../../swaps/swap_desc_k.txt
.. include:: ../../swaps/swap_desc_l.txt
.. include:: ../../swaps/swap_desc_m.txt
.. include:: ../../swaps/swap_desc_n.txt
.. include:: ../../swaps/swap_desc_o.txt
.. include:: ../../swaps/swap_desc_p.txt
.. include:: ../../swaps/swap_desc_q.txt
.. include:: ../../swaps/swap_desc_r.txt
.. include:: ../../swaps/swap_desc_s.txt
.. include:: ../../swaps/swap_desc_t.txt
.. include:: ../../swaps/swap_desc_u.txt
.. include:: ../../swaps/swap_desc_v.txt
.. include:: ../../swaps/swap_desc_w.txt
.. include:: ../../swaps/swap_desc_x.txt
.. include:: ../../swaps/swap_desc_y.txt
.. include:: ../../swaps/swap_desc_z.txt
.. include:: ../../swaps/swap_http.txt
.. include:: ../../swaps/swap_names.txt
.. include:: ../../swaps/swap_notes.txt

|cookbook name aws|

The ``aws`` cookbook contains the following lightweight resources: ``aws_ebs_volume``, ``aws_elastic_ip``, ``aws_elastic_lb``, and ``aws_resource_tag``.

|amazon aws| Credentials
=====================================================
.. include:: ../../includes_resources/includes_resource_lwrp_aws_credentials.rst

aws_ebs_volume
=====================================================
.. include:: ../../includes_resources/includes_resource_lwrp_aws_ebs_volume.rst

.. note:: This lightweight resource is part of the ``AWS`` cookbook (http://community.opscode.com/cookbooks/aws), which provides libraries, resources, and providers that can be used to configure and manage |amazon aws| components using the |amazon ec2| API.

Actions
-----------------------------------------------------
.. include:: ../../includes_resources/includes_resource_lwrp_aws_ebs_volume_actions.rst

Attributes
-----------------------------------------------------
.. include:: ../../includes_resources/includes_resource_lwrp_aws_ebs_volume_attributes.rst

Examples
+++++++++++++++++++++++++++++++++++++++++++++++++++++
.. include:: ../../steps/step_chef_lwrp_aws_ebs_volume_create_volume_attach_to_node.rst

.. include:: ../../steps/step_chef_lwrp_aws_ebs_volume_create_volume_from_existing_snapshot.rst

.. include:: ../../steps/step_chef_lwrp_aws_ebs_volume_prune_snapshots.rst

aws_elastic_ip
=====================================================
.. include:: ../../includes_resources/includes_resource_lwrp_aws_elastic_ip.rst

.. note:: This lightweight resource is part of the ``AWS`` cookbook (http://community.opscode.com/cookbooks/aws), which provides libraries, resources, and providers that can be used to configure and manage |amazon aws| components using the |amazon ec2| API.

Actions
-----------------------------------------------------
.. include:: ../../includes_resources/includes_resource_lwrp_aws_elastic_ip_actions.rst

Attributes
-----------------------------------------------------
.. include:: ../../includes_resources/includes_resource_lwrp_aws_elastic_ip_attributes.rst

Examples
-----------------------------------------------------
.. include:: ../../steps/step_chef_lwrp_aws_elastic_ip_associate.rst

.. include:: ../../steps/step_chef_lwrp_aws_elastic_ip_disassociate.rst


aws_elastic_lb
=====================================================
.. include:: ../../includes_resources/includes_resource_lwrp_aws_elastic_lb.rst

.. note:: This lightweight resource is part of the ``AWS`` cookbook (http://community.opscode.com/cookbooks/aws), which provides libraries, resources, and providers that can be used to configure and manage |amazon aws| components using the |amazon ec2| API.

Actions
-----------------------------------------------------
.. include:: ../../includes_resources/includes_resource_lwrp_aws_elastic_lb_actions.rst

Attributes
-----------------------------------------------------
.. include:: ../../includes_resources/includes_resource_lwrp_aws_elastic_lb_attributes.rst

Examples
-----------------------------------------------------
.. include:: ../../steps/step_chef_lwrp_aws_elastic_lb_add.rst


aws_resource_tag
=====================================================
.. include:: ../../includes_resources/includes_resource_lwrp_aws_resource_tag.rst

.. note:: This lightweight resource is part of the ``AWS`` cookbook (http://community.opscode.com/cookbooks/aws), which provides libraries, resources, and providers that can be used to configure and manage |amazon aws| components using the |amazon ec2| API.

Actions
-----------------------------------------------------
.. include:: ../../includes_resources/includes_resource_lwrp_aws_resource_tag_actions.rst

Attributes
-----------------------------------------------------
.. include:: ../../includes_resources/includes_resource_lwrp_aws_resource_tag_attributes.rst

Examples
-----------------------------------------------------
.. include:: ../../steps/step_chef_lwrp_aws_resource_tag_assign_to_node.rst

.. include:: ../../steps/step_chef_lwrp_aws_resource_tag_assign_to_resources.rst
=====================================================
Chef Server
=====================================================

.. include:: ../../includes_chef_server/includes_chef_server.rst

There are three types of |chef| servers:

.. list-table::
   :widths: 60 420
   :header-rows: 1

   * - Feature
     - Description
   * - .. image:: ../../images/icon_chef_hosted.png
     - .. include:: ../../includes_chef/includes_chef_hosted.rst

       |chef hosted| evolved out of a need for an infrastructure management tool to be built around the notion of API primitives. By using an API to talk to a cloud provider (such as |amazon vpc|, |windows azure|, or |rackspace|), it allows the freedom to think of those primitives as building blocks. |chef hosted| evolved out of this idea. |chef| only needs to know about the desired state, how it should get there, and what the proper functionality of that desired state should be.
   * - .. image:: ../../images/icon_chef_private.png
     - .. include:: ../../includes_chef/includes_chef_private.rst

       |chef private| evolved out of a need for customers to have the same functionality provided by |chef hosted|, but located within the organization's firewall. |chef private| is the same as |chef hosted|. |chef hosted| is the largest |chef private| deployment in the world.
   * - 
     - .. include:: ../../includes_chef/includes_chef_open_source.rst

Policy
=====================================================
.. include:: ../../includes_chef/includes_chef_policy.rst
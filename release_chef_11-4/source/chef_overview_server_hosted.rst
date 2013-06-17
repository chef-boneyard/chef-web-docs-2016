=====================================================
The Hosted Chef Server
=====================================================

.. include:: ../../includes_chef/includes_chef_hosted.rst

|chef hosted| is based on the idea that an infrastructure management tool should be built around a collection of API primitives. By using an API to talk to a cloud provider (such as |amazon vpc|, |windows azure|, or |rackspace|), it allows the freedom to think of those primitives as building blocks. |chef| only needs to know about the desired state, how it should get there, and what the proper functionality of that desired state should be.
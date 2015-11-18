
=====================================================
Release Notes: |chef server_title| 12.3
=====================================================

.. include:: ../../includes_chef/includes_chef_index.rst

What's New
=====================================================
The following items are new for |chef server| 12.3:

* **xxxxx** xxxxx.
* **RabbitMQ queue tuning** New settings for managing |rabbitmq| queues allow the size of the queue used by |chef analytics| to be configured, including settings for the queue length monitor and for tuning the |rabbitmq mgmt|.


xxxxx
=====================================================
xxxxx

xxxxx
-----------------------------------------------------
xxxxx

|rabbitmq| Queues
-----------------------------------------------------
If the |rabbitmq| queue that is used by |chef analytics| stops consuming messages, the |chef server| data partition will fill up and may affect the overall performance of the |chef server| application itself.

The settings for the |rabbitmq| queue are tunable, including for queue length monitoring, queue capacity, maximum number of messages that can be in the queue before messages are dropped, the point at which messages are droped, for settings used by the |rabbitmq mgmt|, and so on.

.. include:: ../../includes_server_tuning/includes_server_tuning_rabbitmq_analytics_queue.rst

What's Fixed
=====================================================
For the list of issues that were addressed for this release, please see the changelog on |github|: https://github.com/chef/opscode-omnibus/blob/master/CHANGELOG.md

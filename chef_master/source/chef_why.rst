=====================================================
Why Chef?
=====================================================

.. include:: ../../includes_chef/includes_chef_why_you_know_best.rst

What are the core principles?
=====================================================

.. include:: ../../includes_chef/includes_chef_why_principles.rst

Idempotence
-----------------------------------------------------
.. include:: ../../includes_chef/includes_chef_why_principles_idempotence.rst

Thick Clients, Thin Server
-----------------------------------------------------
.. include:: ../../includes_chef/includes_chef_why_principles_thin_client.rst

Order Matters
-----------------------------------------------------
.. include:: ../../includes_chef/includes_chef_why_principles_order_matters.rst

Why was Chef created?
=====================================================
.. include:: ../../includes_chef/includes_chef_why_origins.rst

How can I help?
-----------------------------------------------------
Join the community, participate in the discussion going on right now on IRC, sign up for the mailing Lists, and read the instructions on how to contribute to an |opscode| open source project.

.. include:: ../../includes_community/includes_community_contributions.rst

Do I really need to know Ruby?
-----------------------------------------------------
It helps, but its not required. You can learn :doc:`Just Enough Ruby for Chef </just_enough_ruby_for_chef>`.

Can I trust Chef?
-----------------------------------------------------
Yes, absolutely. The |chef client| will not do anything to your system that isn't in a recipe. Because |chef| is an open source project, you have full access to the source code.


Who uses Chef?
=====================================================
Lots of companies, ranging from `small startups to the largest companies on the planet <http://www.opscode.com/customers/>`_.

Why the Apache license?
=====================================================
.. include:: ../../includes_chef/includes_chef_why_apache_license.rst


Comparisons
=====================================================
There are other applications out there that do things similar to |chef|. We believe that we are different (and better) and that by choosing |chef| you are choosing the best option.

|puppet|
-----------------------------------------------------
|puppet| evolved from |cfengine| and showed potential to be a new kind of configuration management. The original design of |chef| was strongly influenced by our own experiences working with and contributing to the |puppet| project. That said, |chef| does not share any code from |puppet|, and is not a "fork" of the |puppet| project. 

|chef| is different from |puppet| in a number of important ways:

* |chef| uses |ruby| as the configuration language, as opposed to a custom DSL
* |chef| is designed from the ground up to integrate with other tools, or to make that integration as simple as possible. |chef| is not the canonical representation of your infrastructure. It is a service that exposes data about the state of your infrastructure
* The |chef client| applies resources in the order they are specified in recipes. There is no dependency management. This means multiple |chef client| runs will always apply the resources under management in the same order, every time
* Resources have actions, which can be signaled
* Resources can appear more than once and they inherit the attributes of the earlier resource. In other words, you can tell |apache| to start and stop in a recipe by specifying the resource twice, with the second one only changing the action attribute

|cfengine|
-----------------------------------------------------
|cfengine| and |chef| aren't very similar at all, outside of both applications embracing the concept of Single Copy Nirvana.

For more information ...
=====================================================
.. include:: ../../includes_chef/includes_chef_for_more_info.rst
=====================================================
Why Chef?
=====================================================

.. include:: ../../includes_chef/includes_chef_why_you_know_best.rst

What are the core principles of Chef?
=====================================================

.. include:: ../../includes_chef/includes_chef_why_principles.rst


There are some very important principles behind the design of |chef|:

* **Idempotence** --- The system always returns to the desired state
* **Thick Clients, Thin Server** --- Distribution of data to the |chef client|
* **Order Matters** --- Proper sequence during configuration is important
* **Easy to understand, change, and extend** --- The ability to easily extend the capabilities of |chef|

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
|opscode| began as a consulting company named HJK Solutions, which built fully automated infrastructure for startups. Everything from installing operating systems to full application development. Over the course of building a dozen or so different startups on the same basic infrastructure timeline (over a one year period), we realized that getting to a place where everyone could have a fully automated infrastructure, regardless of the expertise of their system administrators, was possible. Only a few things stood in the way:

* A fully automated infrastructure is a fully integrated infrastructure. The different components need to be able to communicate with each other. (Your application informs your infrastructure, just like your infrastructure informs your application.)
* Configuration management is the fundamental bedrock of infrastructure automation. For the infrastructure to be fully automated, it must expose configuration management as a service.
* Share the code that builds the infrastructure is difficult; the available tools required a level of specificity that made sharing difficult.
* No other open source tools met the requirements.

We solve these problems by:

* Building a systems integration framework on top of a configuration management system, powered by |ruby| and a simple DSL. This approach makes it easy for beginners.
* Making it possible to easily extend the capabilities of |chef| and by allowing |chef| to take instruction from ad-hoc sources.
* Every decision about |chef| was made with an eye to keeping as much as possible inside of cookbooks, which are sharable chunks of automation that are easily reused and extended.
* Sharing an open source version of |chef| with everyone, creating an outstanding community, with a license that allows everyone to safely integrate |chef| into their environment. |chef| (and |ohai|) are licensed under the Apache License Version 2.0, a liberal, non-copyleft free software license. We maintain Contributor License Agreements, which allows anyone who uses |chef| (or |ohai|) to know they are free from any copyright or patent entanglements. 

The goal is to remove people from the process of building automated infrastructure, as much and as often as possible. |chef| is the first part of a framework that will allow all of us to do that.

How can I help?
-----------------------------------------------------
Join the |chef| community, participate in the discussion going on right now on IRC, sign up for the |chef| mailing Lists, and read the instructions on how to contribute to an |opscode| open source project.

.. include:: ../../includes_community/includes_community_contributions.rst

Do I really need to know Ruby?
-----------------------------------------------------
It helps, but its not required. You can learn :doc:`Just Enough Ruby for Chef </just_enough_ruby_for_chef>`.

Can I trust |chef|?
-----------------------------------------------------
Yes, absolutely. |chef| will not do anything to your system that isn't in a recipe. Because |chef| is an open source project, you have full access to the source code.


Who uses Chef?
=====================================================
Lots of companies, ranging from `small startups to the largest companies on the planet <http://www.opscode.com/customers/>`_.

Why the Apache license?
=====================================================
The short version is that we had three broad requirements for the license under which we would release open source software:

* We are an open source company. We make money from our open source software. We wanted a license that allowed us to build a business from the things we created
* We wanted anyone (or any company) whose problems were solved by our software to be able to use it, in any environment they wanted, in whatever way they wanted
* We wanted to build an open and equal community of users. We did not want to reserve any rights for ourselves that we didn’t grant to the all of the other people (and companies) who helped build our software

For more detail, read `the blog post about why we love open source <http://www.opscode.com/blog/2009/08/11/why-we-chose-the-apache-license/>`_.


Comparisons
=====================================================
There are some other applications out there that do things similar to |chef|. We believe that we are different (and better) and that by choosing |chef| you are choosing the best option.

|puppet|
-----------------------------------------------------
|puppet| evolved from |cfengine| and showed potential to be a new kind of configuration management. The original design of |chef| was strongly influenced by our own experiences working with and contributing to the |puppet| project. That said, |chef| does not share any code from |puppet|, and is not a "fork" of the |puppet| project. 

|chef| is different from |puppet| in a number of important ways:

* |chef| uses |ruby| as the configuration language, as opposed to a custom DSL
* |chef| is designed from the ground up to integrate with other tools, or to make that integration as simple as possible. |chef| is not the canonical representation of your infrastructure. It is a service that exposes data about the state of your infrastructure
* |chef| applies resources in the order they are specified in recipes. There is no dependency management. This means multiple |chef| runs will always apply the resources under management in the same order, every time
* |chef| resources have actions, which can be signaled
* Resources can appear more than once in |chef|, and they inherit the attributes of the earlier resource. In other words, you can tell |apache| to start and stop in a recipe by specifying the resource twice, with the second one only changing the action attribute


As |chef| grows, the services we expose will likely be integrated with |puppet| as well. There is more than one way to do it.

|cfengine|
-----------------------------------------------------
|cfengine| and |chef| aren't very similar at all, outside of both applications embracing the concept of Single Copy Nirvana.


























xxxxx:

.. list-table::
   :widths: 60 420
   :header-rows: 1

   * - xxxxx
     - Description
   * - xxxxx
     - xxxxx



Conclusion
=====================================================


For more information ...
-----------------------------------------------------
For history of |chef|, where it came from and how it evolved, watch these two (short) videos:

* Part one: |http opscode youtube short part one|
* Part two: |http opscode youtube short part two|

For more information about |opscode|, cookbooks for |chef|, and the |chef| community:

* |http opscode|
* |http community|
* |http community cookbooks|



=====================================================
Cookbooks
=====================================================

.. include:: ../../includes_cookbooks/includes_cookbooks.rst

.. warning:: This topic is a work in progress. It does not represent a suggested workflow or a recommended workflow. It attempts to recognize some high-level common ways people use cookbooks, put them in a single topic so that the concepts may be discussed, that is all.

Global Patterns
=====================================================
.. include:: ../../includes_cookbook/includes_cookbook_pattern.rst

.. note:: This topic uses the following terms: |cookbook type_app|, |cookbook type_base|, |cookbook type_wrapper|, and |cookbook type_policy| to represent different approaches for creating building blocks out of cookbooks. These terms aren't always used consistently within the larger |chef| community. That said, the most important takeaway from this topic isn't the terms themselves, but instead the following: 1) use community cookbooks as often as possible; modify community cookbooks using |cookbook type_wrapper| cookbooks (when necessary); all cookbooks should work together as building blocks that represent the various working configurations that your organization requires.

Global Recipe Patterns
-----------------------------------------------------
.. include:: ../../includes_cookbook/includes_cookbook_pattern_recipes.rst

Pattern Types
=====================================================
.. include:: ../../includes_cookbook/includes_cookbook_pattern_types.rst

Base Cookbooks
-----------------------------------------------------
.. include:: ../../includes_cookbook/includes_cookbook_pattern_base.rst

Wrapper Cookbooks
-----------------------------------------------------
.. include:: ../../includes_cookbook/includes_cookbook_pattern_wrapper.rst

**Example**

.. include:: ../../includes_cookbook/includes_cookbook_pattern_wrapper_example.rst

App Cookbooks
-----------------------------------------------------
.. include:: ../../includes_cookbook/includes_cookbook_pattern_app.rst

**Example**

.. include:: ../../includes_cookbook/includes_cookbook_pattern_app_example.rst

|chef server_title| Policy
-----------------------------------------------------
.. include:: ../../includes_cookbook/includes_cookbook_pattern_policy.rst

For more information ...
=====================================================
For more information about |chef spec|:

* `Blog post by Julian Dunn about wrapper cookbooks <http://www.getchef.com/blog/2013/12/03/doing-wrapper-cookbooks-right/>`_
* `Blog post by Doug Ireton about cookbook anti-patterns <http://dougireton.com/blog/2013/02/16/chef-cookbook-anti-patterns/>`_
* `Blog post by Julian Dunn about role cookbooks <http://www.getchef.com/blog/2013/11/19/chef-roles-arent-evil/>`_
* `Blog post by Joshua Timberman about the evolution of cookbook development <http://jtimberman.housepub.org/blog/2014/02/01/evolution-of-cookbook-development/>`_


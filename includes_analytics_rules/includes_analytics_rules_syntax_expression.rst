.. The contents of this file are included in multiple topics.
.. This file should not be changed in a way that hinders its ability to appear in multiple documentation sets.


An expression defines a specific test in a rule and uses fields within the expression that are specific to the message type for the rule. For example:

.. code-block:: ruby

   total_resource_count > 1 and
   updated_resource_count > 0

.. code-block:: ruby

   array:contains(run_list, 'role[opscode-reporting]')

where both ``total_resource_count``, ``updated_resource_count``, and ``run_list`` are the `fields specific to a message type <https://docs.chef.io/analytics_rules.html#message-types>`_.

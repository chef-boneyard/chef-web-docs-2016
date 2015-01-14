.. The contents of this file are included in multiple topics.
.. This file should not be changed in a way that hinders its ability to appear in multiple documentation sets.


The syntax for a |chef analytics| rule is as follows:

.. code-block:: java

   rules "name"
     with priority=n
     rule "name" on message_type
     when
       // comment
       function()
     then
       // comment
       function()
     otherwise
       // comment
       function()
     end
   
     rule ...
       ...
     end
   
     ...
   end

where:

* ``rules`` defines a rules group which is comprised of individual rules (``rule``)
* ``rule`` defines an individual rule; each rule must be contained in its own ``rule`` block
* ``with priority=n`` is a positive or negative integer that defines the relative priority of a rules group as compared to all other rules groups
* ``"name"`` is name of the rule group and/or the name of the rule; required for ``rules``, optional for each ``rule``
* ``message_type`` is one of the following audit message types: ``action``, ``run_control``, ``run_control_group``, ``run_converge``, ``run_resource``, or ``run_start``
* ``when`` is a series of evaluations that result in ``true`` or ``false``
* ``then`` is a comma-separated group of statements that are used to test data
* ``otherwise`` is a comma-separated group of statements that are used to test data
* ``function()`` is a statement that tests a value in the |json| object; functions may be one of ``array:contains()``, ``audit:<level>()``, ``datetime:component()``, ``get()``, ``log()``, or ``mustache_template()``. (See "Functions" below for more information about the individual functions.)

For example:

.. code-block:: java

   rules "Check deploy day of week"
     with priority=-100
     rule "my rule" on action
     when
       // DAY_OF_WEEK uses 1 -> 7 for Monday -> Sunday
       datetime:component(recorded_at, "DAY_OF_WEEK") >= 5
     then
       // set a user defined value
       set(#alert, 'can\'t deploy on Friday, Saturday, Sunday'), 
       // notify a configured alias
       notify("weekend_deploys"), 
       // record an audit warning
       audit:warn("deploy_error") 
     otherwise
       // set a user defined value if the rule doesn't match
       // reach into the 'data' json object and pull out it's 'name'
       set(#some_value, data.name)  
     end
   end

.. The contents of this file are included in multiple topics.
.. This file should not be changed in a way that hinders its ability to appear in multiple documentation sets.


The syntax for a |chef analytics| rule is as follows:

.. code-block:: java

   rules "name" when
     json_attribute = "attribute_value"
	 OPERATOR json_attribute = "attribute_value"
	 OPERATOR (json_attribute = "attribute_value", OPERATOR attribute = "attribute_value")
     ...
   then
     FUNCTION
     ...
	 log("log_entry")
   otherwise
     FUNCTION
     ...
	 log("log_entry")
     
where 

* ``rule_type`` is one of ``action``, ``run start``, ``run end``, ``run resource``, or ``control``
* The ``when`` block is used to group expressions, which are a series of evaluations that result in ``true`` or ``false``
* ``json_attribute = "attribute_value"`` is an expression that specifies the data that will be tested by the rule
* ``OPERATOR`` may be ``and`` or ``or``; use operators to separate expressions
* The ``then`` and ``otherwise`` blocks are used to group statements that test the data specified by expressions
* ``FUNCTION`` is a statement that tests the value of a ``json_attribute`` against the rule; functions may be one of ``set``, ``notify``, ``log``, ``array:contains``, ``groovy:eval``, ``groovy:exec``, ``datetime``, or ``mustache_template``. (See "Functions" subsections below for more information.)
* ``log("log_entry")`` is the log entry that is created for statement in the ``then`` or ``otherwise`` blocks

For example:

.. code-block:: java

   rules(action) when
     organization_name = "ponyville"
     and something_else = 'Hello, 世界'
     and (entity_type = 'foo' or entity_type = "bag")
     and remote_hostname ~= "33\.3[0-9].*"
   then
     set(#foo, "100")
     set(#xyz, 'te\'st')
     set(#baz, 99)
     notify("hipchat")
     log("Added rule for org <obj.organization_name>")
  
or:

.. code-block:: java

   rule(action) when
     organization_name = "ponyville"
   then
     set(#foo, "100")
   otherwise
     set(#foo, "200")

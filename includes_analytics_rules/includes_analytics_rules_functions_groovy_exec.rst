.. The contents of this file are included in multiple topics.
.. This file should not be changed in a way that hinders its ability to appear in multiple documentation sets.


Use ``groovy:exec`` to execute arbitrary |groovy| code. The return value is ignored.

.. warning:: |groovy| expressions may be slow! Use them carefully when required. In general, use one of the non-|groovy| functions whenever possible. A |groovy| function can be useful for debugging.

The syntax for this function:

.. code-block:: java

   groovy:exec(groovyString)

where:

* ``groovyString`` xxxxx

For example:

.. code-block:: java

   rule(action) 
   when true 
   then
     groovy:exec('message.foo=1l')
   otherwise
     groovy:exec('message.foo=0l')


.. The contents of this file are included in multiple topics.
.. This file should not be changed in a way that hinders its ability to appear in multiple documentation sets.


Use ``groovy:eval`` to evaluate a |groovy| expression. This must return ``true`` or ``false``.

.. warning:: |groovy| expressions may be slow! Use them carefully when required. In general, use one of the non-|groovy| functions whenever possible. A |groovy| function can be useful for debugging.

The syntax for this function:

.. code-block:: java

   groovy:eval(groovyString)

where:

* ``groovyString`` xxxxx

For example:

.. code-block:: java

   rule(action) when
   groovy:eval("
     if(message.entity_name == 'smarties') { 
       return true; 
     } else { 
       return false;
     }
   ")
   then 
     set($foo, 1)
   otherwise
     set($foo, 0)


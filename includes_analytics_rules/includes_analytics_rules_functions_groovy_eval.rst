.. The contents of this file are included in multiple topics.
.. This file should not be changed in a way that hinders its ability to appear in multiple documentation sets.


Use ``groovy:eval`` to evaluate a GROOVY expression. This must return ``true`` or ``false``.

.. warning:: Groovy expressions may be slow! Use them carefully when required. In general, use one of the non-Groovy functions whenever possible. A Groovy function can be useful for debugging. BLARGH!!!!!!!

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


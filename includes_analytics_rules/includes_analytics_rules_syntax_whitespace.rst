.. The contents of this file are included in multiple topics.
.. This file should not be changed in a way that hinders its ability to appear in multiple documentation sets.

Whitespace is ignored by the rules parser unless it is contained within single- or double-quotes. For example, the following rules are parsed the same way:

.. code-block:: ruby

   rules 'rule'
     rule on action
     when
       true
     then
       alert:info('string')
     end
   end

and:

.. code-block:: ruby

   rules 'rule' rule on action when true then audit:info('string') end end

The rules parser does not ignore spaces that are contained within single- or double-quotes. For example

.. code-block:: ruby

   'This is a string. The parser will not ignore the whitespace.'

or:

.. code-block:: ruby

   "This is a string. The parser will not ignore the whitespace."

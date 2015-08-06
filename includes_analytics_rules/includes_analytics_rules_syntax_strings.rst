.. The contents of this file are included in multiple topics.
.. This file should not be changed in a way that hinders its ability to appear in multiple documentation sets.

A string must be contained in single- or double-quotes and may contain any valid UTF-8 character. For example, a single-quoted string:

.. code-block:: ruby

   'A string.'

or a double-quoted string:

.. code-block:: ruby

   "A string."

or a valid UTF-8 character:

.. code-block:: ruby

   "ᚠᛇᚻ᛫ᛒᛦᚦ᛫ᚠᚱᚩᚠᚢᚱ᛫ᚠᛁᚱᚪ᛫ᚷᛖᚻᚹᛦᛚᚳᚢᛗ"

Use a backslash---``\``---to escape single-quotes that must appear within a single-quoted string. For example:

.. code-block:: ruby

   'This is a string with \'escaped single quotes\'.'

to escape double-quotes that must appear within a double-quoted string:

.. code-block:: ruby

   "This is a string with \"escaped double quotes\"."

Single-quotes that appear within a double-quoted string do not need to be escaped. Double-quotes that appear in a single-quoted string do not need to be escaped.

For example:

.. code-block:: ruby

   rules 'string example'
     rule on action
     when
       // this rule always matches
       true
     then
       // single quoted string, 
        alert:info('This rule matches all \'action\' messages')
     end
   end

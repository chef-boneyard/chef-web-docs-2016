.. The contents of this file are included in multiple topics.
.. This file should not be changed in a way that hinders its ability to appear in multiple documentation sets.


Use |perl|-style regular expressions:

.. code-block:: ruby

   'I believe'  =~ /I/                       # => 0 (matches at the first character)
   'I believe'  =~ /lie/                     # => 4 (matches at the 5th character)
   'I am human' =~ /bacon/                   # => nil (no match - bacon comes from pigs)
   'I am human' !~ /bacon/                   # => true (correct, no bacon here)
   /give me a ([0-9]+)/ =~ 'give me a 7'     # => 0 (matched)

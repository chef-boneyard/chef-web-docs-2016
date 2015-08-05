.. The contents of this file are included in multiple topics.
.. This file should not be changed in a way that hinders its ability to appear in multiple documentation sets.

The following examples show how the logic works for substituting an existing string using a hash::

   role_or_environment 1 { :x => '1', :y => '2' }
   +
   role_or_environment 2 { :y => '3' }
   =
   { :x => '1', :y => '3' }

For substituting an existing boolean using a hash::

   role_or_environment 1 { :x => true, :y => false }
   +
   role_or_environment 2 { :y => true }
   =
   { :x => true, :y => true }

For substituting an array with a hash::

   role_or_environment 1 [ '1', '2', '3' ]
   +
   role_or_environment 2 { :x => '1' , :y => '2' }
   =
   { :x => '1', :y => '2' }

When items cannot be merged through substitution, the original data is overwritten.

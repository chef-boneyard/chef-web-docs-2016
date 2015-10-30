.. The contents of this file are included in multiple topics.
.. This file should not be changed in a way that hinders its ability to appear in multiple documentation sets.

A ``passwd`` |inspec resource| block declares one (or more) users and associated user information to be tested:

.. code-block:: ruby

   describe passwd do
     its('matcher') { should eq 0 }
   end

where

* ``count``, ``gids``, ``passwords``, ``uid``, ``uids``, ``username``, ``usernames``, and ``users`` are valid matchers for this InSpec resource

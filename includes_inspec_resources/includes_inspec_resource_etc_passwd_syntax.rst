.. The contents of this file are included in multiple topics.
.. This file should not be changed in a way that hinders its ability to appear in multiple documentation sets.

A ``passwd`` |inspec resource| block declares one (or more) users and associated user information to be tested:

.. code-block:: ruby

   describe passwd do
     its('matcher') { should eq 0 }
   end

   describe passwd.uid(filter) do
     its(:username) { should eq 'root' }
     its(:count) { should eq 1 }
   end

where

* ``gids``, ``passwords``, ``uids``, and ``usernames`` are valid matchers for ``passwd``
* ``filter`` is a filter for a specific uid
* ``count``, ``uid``, ``username`` are valid matchers for ``passwd.uid(userid)``

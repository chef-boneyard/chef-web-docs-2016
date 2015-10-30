.. The contents of this file are included in multiple topics.
.. This file should not be changed in a way that hinders its ability to appear in multiple documentation sets.

The ``repo('name')`` matcher names a specific package repository:

.. code-block:: ruby

   describe yum.repo('epel') do
     ...
   end

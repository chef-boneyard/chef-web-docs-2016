.. The contents of this file are included in multiple topics.
.. This file should not be changed in a way that hinders its ability to appear in multiple documentation sets.

A resource declaration SHOULD specify the action to be taken.

Right:

.. code-block:: ruby

   package 'monit' do
     action :install
   end

Wrong:

.. code-block:: ruby

   package 'monit'

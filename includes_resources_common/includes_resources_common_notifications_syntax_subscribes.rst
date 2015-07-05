.. The contents of this file are included in multiple topics.
.. This file should not be changed in a way that hinders its ability to appear in multiple documentation sets.

Specify the ``:action``, the ``'resource[name]'``, and a timer (``:delayed`` or ``:immediately``). Use multiple ``subscribes`` statements to listen to more than one resource.

.. code-block:: ruby

   resource 'name' do
     ... 
     subscribes :action, 'resource[name]', :timer
   end

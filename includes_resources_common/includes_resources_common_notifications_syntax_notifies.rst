.. The contents of this file are included in multiple topics.
.. This file should not be changed in a way that hinders its ability to appear in multiple documentation sets.

Specify the ``:action``, ``'resource[name]'``, and timer (``:delayed`` or ``:immediately``). Use multiple ``notifies`` statements to notify more than one resource.

.. code-block:: ruby

   resource 'name' do
     ... 
     notifies :action, 'resource[name]', :timer
   end

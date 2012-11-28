.. The contents of this file are included in multiple topics.
.. This file should not be changed in a way that hinders its ability to appear in multiple documentation sets.

The basic syntax of a ``subscribes`` notification is:

.. code-block:: ruby

   resource "name" do
     subscribes :action, resources(:resource_type => "resource_name"), :notification_timing
   end

or:

.. code-block:: ruby

   resource "name" do
     subscribes :action, resources("resource[resource_name]"), :notification_timing
   end
.. The contents of this file are included in multiple topics.
.. This file should not be changed in a way that hinders its ability to appear in multiple documentation sets.


A |resource reboot| resource block reboots a node:

.. code-block:: ruby

   reboot 'app_requires_reboot' do
     action :request_reboot
     reason 'Need to reboot when the run completes successfully.'
     delay_mins 5
   end

The full syntax for all of the attributes that are available to the |resource reboot| resource is:

.. code-block:: ruby

   reboot 'name' do
     delay_mins                 Fixnum
     notifies                   # see description
     reason                     String
     subscribes                 # see description
     action                     Symbol
   end

where 

* ``reboot`` is the resource
* ``name`` is the name of the resource block
* ``:action`` identifies the steps the |chef client| will take to bring the node into the desired state
* ``delay_mins`` and ``reason`` are attributes of this resource, with the |ruby| type shown. |see attributes|

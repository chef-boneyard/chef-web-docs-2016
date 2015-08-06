.. The contents of this file are included in multiple topics.
.. This file should not be changed in a way that hinders its ability to appear in multiple documentation sets.

.. This topic is NOT the same as the LWRP resource topic; keep separate.

A resource that is defined in the ``/libraries`` directory may leverage core |chef client| resources by using the following syntax:

.. code-block:: ruby

   Chef::Resource::name_of_resource.new('name', run_context)

or:

.. code-block:: ruby

   Chef::Resource::name_of_resource.new(:action)

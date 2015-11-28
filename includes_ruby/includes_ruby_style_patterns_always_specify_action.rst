.. The contents of this file are included in multiple topics.
.. This file should not be changed in a way that hinders its ability to appear in multiple documentation sets.

A resource declaration does not require the action to be specified because the |chef client| will apply the default action for a resource automatically if it's not specified within the resource block. For example:

.. code-block:: ruby

   package 'monit'

will install the ``monit`` package because the ``:install`` action is the default action for that resource.

However, if readability of code is desired, such as ensuring a reader understands what the default action might be for a custom resource in a community cookbook, specifying the resource action is recommended:

.. code-block:: ruby

   package 'monit' do
     action :install
   end

.. The contents of this file are included in multiple topics.
.. This file should not be changed in a way that hinders its ability to appear in multiple documentation sets.

A resource declaration does not require the action to be specified because the |chef client| will apply the default action for a resource automatically if it's not specified within the resource block. For example:

.. code-block:: ruby

   package 'monit'

will install the ``monit`` package because the ``:install`` action is the default action for the |resource package| resource.

However, if readability of code is desired, such as ensuring that a reader understands what the default action is for a custom resource or stating the action for a resource whose default may not be immediately obvious to the reader, specifying the default action is recommended:

.. code-block:: ruby

   ohai ‘apache_modules' do
     action :reload
   end

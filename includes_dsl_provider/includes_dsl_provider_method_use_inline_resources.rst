.. The contents of this file are included in multiple topics.
.. This file should not be changed in a way that hinders its ability to appear in multiple documentation sets.


A lightweight resource should be set to inline compile mode by adding the ``use_inline_resources`` method at the top of the provider. This ensures that notifications work properly across the resource collection. For example:

.. code-block:: ruby

   use_inline_resoures

   action :run do
     # Ruby code that implements the provider
   end

.. warning:: The ``use_inline_resources`` method was added to the |chef client| starting in version 11.0 to address the behavior described below. The ``use_inline_resources`` method should be considered a requirement for any lightweight resource authored against the 11.0+ versions of the |chef client|. This behavior will become the default behavior in an upcoming version of the |chef client|.
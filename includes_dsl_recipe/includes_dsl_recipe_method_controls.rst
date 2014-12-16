.. The contents of this file are included in multiple topics.
.. This file should not be changed in a way that hinders its ability to appear in multiple documentation sets.

Use the ``controls`` method to define an audit. Each ``controls`` object may contain a ``control`` or a ``describe`` block that defines the tests within the audit. 

The syntax for the ``controls`` method is as follows:

.. code-block:: ruby

   controls
     control
       #Server Spec code that defines audit
     end
   end

or:

.. code-block:: ruby

   controls
     describe
       #Server Spec code that defines audit
     end
   end

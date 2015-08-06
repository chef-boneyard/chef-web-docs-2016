.. The contents of this file are included in multiple topics.
.. This file should not be changed in a way that hinders its ability to appear in multiple documentation sets.


The ``whyrun_supported?`` method is used to set a lightweight provider to support |whyrun| mode. The syntax for the ``whyrun_supported?`` method is as follows:

.. code-block:: ruby

   def whyrun_supported?
     true
   end

where ``whyrun_supported?`` is set to ``true`` for any lightweight provider that supports using |whyrun| mode. When |whyrun| mode is supported by the a lightweight provider, the ``converge_by`` method is used to define the strings that are logged by the |chef client| when it is run in |whyrun| mode.

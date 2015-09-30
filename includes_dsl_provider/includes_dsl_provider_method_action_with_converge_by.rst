.. The contents of this file are included in multiple topics.
.. This file should not be changed in a way that hinders its ability to appear in multiple documentation sets.


The ``action`` method is used to define the steps that will be taken for each of the possible actions defined by the lightweight resource. Each action must be defined in separate ``action`` blocks within the same file. The syntax for the ``action`` method is as follows:

.. code-block:: ruby

   action :action_name do
     # Chef resources or ruby converge_by blocks
   end

where:

* ``:action_name`` corresponds to an action defined by a lightweight resource
* ``converge_by`` tells the |chef client| which message to provide when the |chef client| is run in |whyrun| mode

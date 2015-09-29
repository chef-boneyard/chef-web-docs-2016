.. The contents of this file are included in multiple topics.
.. This file should not be changed in a way that hinders its ability to appear in multiple documentation sets.


Use the ``on`` method to associate an event type with the action to take should that event occur during the |chef client| run. The action is defined using arbitrary |ruby| code. The syntax is as follows:

.. code-block:: ruby

   Chef.event_handler do
     on :event_type do
       # some Ruby
     end
   end

where

* ``Chef.event_handler`` declares a block of code to be processed when the named event occurs during a |chef client| run
* ``on`` defines the block of code that will tell the |chef client| how to handle the event
* ``:event_type`` is a valid exception event type, such as ``:run_start``, ``:run_failed``, ``:converge_failed``, ``:resource_failed``, or ``:recipe_not_found``
* Arbitrary |ruby| code tells the |chef client| how to process the event should it occur

For example:

.. code-block:: bash

   Chef.event_handler do
     on :converge_start do
       puts "Ohai! I have started a converge."
     end
   end

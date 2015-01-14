.. The contents of this file are included in multiple topics.
.. This file should not be changed in a way that hinders its ability to appear in multiple documentation sets.

Use the ``control_group`` method to define a group of ``control`` methods that comprise a single audit. 

The syntax for the ``control_group`` method is as follows:

.. code-block:: ruby

   control_group "audit name" do
     control "name" do
       it "should do something" do
         expect(something).to/.to_not be_something
       end
     end
     control "name" do
       ...
     end
     ...
   end

where:

* ``control_group`` groups one (or more) ``control`` blocks
* ``control`` defines each individual audit within the ``control_group`` block. There is no limit to the number of ``control`` blocks that may defined within a ``control_group`` block

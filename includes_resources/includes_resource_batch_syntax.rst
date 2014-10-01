.. The contents of this file are included in multiple topics.
.. This file should not be changed in a way that hinders its ability to appear in multiple documentation sets.

The syntax for using the |resource batch| resource in a recipe is as follows:

.. code-block:: ruby

   batch "name" do
     attribute "value" # see attributes section below
     ...
     action :action # see actions section below
   end

where 

* ``batch`` tells the |chef client| to use the ``Chef::Provider::Batch`` provider during the |chef client| run
* ``"name"`` is the name of the batch script or the path to a file which contains it
* ``attribute`` is zero (or more) of the attributes that are available for this resource
* ``:action`` identifies which steps the |chef client| will take to bring the node into the desired state

For example:

.. code-block:: ruby

   batch "echo vars" do
     code "echo %TEMP% %SYSTEMDRIVE% %PATH% %WINDIR%"
     action :run
   end


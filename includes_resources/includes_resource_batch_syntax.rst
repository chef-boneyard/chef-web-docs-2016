.. The contents of this file are included in multiple topics.
.. This file should not be changed in a way that hinders its ability to appear in multiple documentation sets.

The syntax for using the |resource batch| resource in a recipe is as follows:

.. code-block:: ruby

   batch "name" do
     some_attribute "value" # see attributes section below
     ...
     action :action # see actions section below
   end

where 

* ``batch`` tells |chef| to use the ``Chef::Provider::Batch`` provider during the |chef| run
* ``"name"`` is the name of the batch script or the path to a file which contains it
* ``attribute`` is zero (or more) of the attributes that are available for this resource
* ``:action`` is the step that the resource will ask the provider to take during the |chef client| run

The following is an example of how the |resource batch| resource can work when used in a recipe:

.. code-block:: ruby

   batch "echo vars" do
     code "echo %TEMP% %SYSTEMDRIVE% %PATH% %WINDIR%"
     action :run
   end


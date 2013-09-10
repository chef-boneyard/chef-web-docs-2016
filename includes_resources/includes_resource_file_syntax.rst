.. The contents of this file are included in multiple topics.
.. This file should not be changed in a way that hinders its ability to appear in multiple documentation sets.

The syntax for using the |resource file| resource in a recipe is as follows:

.. code-block:: ruby

   file "name" do
     attribute "value" # see attributes section below
     ...
     action :action # see actions section below
   end

where 

* ``file`` tells the |chef client| to use the ``Chef::Provider::File`` provider during the |chef client| run
* ``name`` is the name of the resource block; when the ``path`` attribute is not specified as part of a recipe, ``name`` is also the path to the file
* ``attribute`` is zero (or more) of the attributes that are available for this resource
* ``:action`` is the step that the resource will ask the provider to take during the |chef client| run

The following is an example of how the |resource file| resource can work when used in a recipe:

.. code-block:: ruby

   file "/tmp/something" do
     owner "root"
     group "root"
     mode "0755"
     action :create
   end




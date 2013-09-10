.. The contents of this file are included in multiple topics.
.. This file should not be changed in a way that hinders its ability to appear in multiple documentation sets.

The syntax for using the |resource script| resource in a recipe is as follows:

.. code-block:: ruby

   script "name" do
     some_attribute "value" # see attributes section below
     ...
     action :action # see actions section below
   end

where 

* ``script`` tells the |chef client| to use one of the following providers during the |chef client| run: ``Chef::Resource::Script``, ``Chef::Resource::Script::Bash``, ``Chef::Resource::Script::Csh``, ``Chef::Resource::Script::Perl``, ``Chef::Resource::Script::Python``, or ``Chef::Resource::Script::Ruby``. The provider that is used by the |chef client| depends on the platform of the machine on which the run is taking place
* ``name`` is the name of the resource block; when the ``command`` attribute is not specified as part of a recipe, ``name`` is also the name of the command to be executed
* ``attribute`` is zero (or more) of the attributes that are available for this resource
* ``:action`` is the step that the resource will ask the provider to take during the |chef client| run


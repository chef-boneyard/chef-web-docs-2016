.. The contents of this file are included in multiple topics.
.. This file should not be changed in a way that hinders its ability to appear in multiple documentation sets.

The syntax for using the |resource script| resource in a recipe is as follows:

.. code-block:: ruby

   script "name" do
     attribute "value" # see attributes section below
     ...
     action :action
   end

where 

* ``script`` tells |chef| to use one of the following providers during the |chef| run: ``Chef::Resource::Script``, ``Chef::Resource::Script::Bash``, ``Chef::Resource::Script::Csh``, ``Chef::Resource::Script::Perl``, ``Chef::Resource::Script::Python``, or ``Chef::Resource::Script::Ruby``. The provider that is used by |chef| depends on the platform of the machine on which the |chef| run is taking place
* ``"name"`` is the name of the script that will be run
* ``attribute`` is zero (or more) of the attributes that are available for this resource
* ``:action`` is the step that the resource will ask the provider to take during the |chef| run


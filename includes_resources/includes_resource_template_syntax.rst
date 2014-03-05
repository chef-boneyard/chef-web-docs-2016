.. The contents of this file are included in multiple topics.
.. This file should not be changed in a way that hinders its ability to appear in multiple documentation sets.

The syntax for using the |resource template| resource in a recipe is as follows:

.. code-block:: ruby

   template "name" do
     source "template_name.erb"
     attribute "value" # see attributes section below
     ...
     action :action # see actions section below
   end

where 

* ``template`` tells the |chef client| to use the ``Chef::Provider::File::Template`` provider during the |chef client| run
* ``name`` is the path to the location in which a file will be created *and* the name of the file to be managed; for example: ``/var/www/html/index.html``, where ``/var/www/html/`` is the path to the location and ``index.html`` is the name of the file
* ``source`` is the template file that will be used to create the file on the node, for example: ``index.html.erb``; the template file is located in the ``/templates`` directory of a cookbook
* ``attribute`` is zero (or more) of the attributes that are available for this resource
* ``:action`` is the step that the resource will ask the provider to take during the |chef client| run

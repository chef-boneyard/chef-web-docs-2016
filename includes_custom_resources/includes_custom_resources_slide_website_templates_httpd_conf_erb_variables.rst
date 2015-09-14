.. The contents of this file are included in multiple topics.
.. This file should not be changed in a way that hinders its ability to appear in multiple documentation sets.
.. This file is hooked into a slide deck


The ``httpd.conf.erb`` template has two variables:

* ``<%= @instance_name %>``
* ``<%= @port %>``

They are:

* Declared as properties of the custom resource
* Defined as variables in a |resource template| resource block within the custom resource
* Tunable from a recipe when using ``port`` and ``instance_name`` as properties in that recipe
* ``instance_name`` defaults to the ``'name'`` of the custom resource if not specified as a property

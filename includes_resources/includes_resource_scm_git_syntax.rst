.. The contents of this file are included in multiple topics.
.. This file should not be changed in a way that hinders its ability to appear in multiple documentation sets.

The syntax for using the git resource in a recipe is as follows:

.. code-block:: ruby

   git "name" do
     attribute "value" # see attributes section below
     ...
     action :action # see actions section below
   end

where 

* ``git`` tells the |chef client| to use the ``Chef::Provider::Git`` provider during the |chef client| run.
* ``"name"`` is the location in which the source files will be placed and/or synchronized with the files under source control management
* ``attribute`` is zero (or more) of the attributes that are available for this resource
* ``:action`` is the step that the resource will ask the provider to take during the |chef client| run

The following is an example shows the git resource:

.. code-block:: ruby

   git "#{Chef::Config[:file_cache_path]}/app_name" do
     repository node[:app_name][:git_repository]
     revision node[:app_name][:git_revision]
     action :sync
     notifies :run, "bash[compile_app_name]"
   end

where

* the name of the resource is ``#{Chef::Config[:file_cache_path]}/libvpx``
* the ``repository`` and ``reference`` nodes tell the |chef client| which repository and revision to use

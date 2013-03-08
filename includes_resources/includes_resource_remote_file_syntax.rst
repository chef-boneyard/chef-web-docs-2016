.. The contents of this file are included in multiple topics.
.. This file should not be changed in a way that hinders its ability to appear in multiple documentation sets.

The syntax for using the |resource remote_file| resource in a recipe is as follows:

.. code-block:: ruby

   remote_file "name" do
     some_attribute "value" # see attributes section below
     ...
     action :action # see actions section below
   end

where 

* ``remote_file`` tells |chef| to use the ``Chef::Provider::File::RemoteFile`` provider during the |chef| run
* ``"name"`` is the name and location of the remote file
* ``attribute`` is zero (or more) of the attributes that are available for this resource
* ``:action`` is the step that the resource will ask the provider to take during the |chef| run

The following is an example of how the |resource remote_file| resource can work when used in a recipe:

.. code-block:: ruby

   remote_file "#{Chef::Config[:file_cache_path]}/large-file.tar.gz" do
     source "http://www.example.org/large-file.tar.gz"
   end
.. The contents of this file are included in multiple topics.
.. This file should not be changed in a way that hinders its ability to appear in multiple documentation sets.

The syntax for using the subversion resource in a recipe is as follows:

.. code-block:: ruby

   subversion "name" do
     some_attribute "value" # see attributes section below
     ...
     action :action # see actions section below
   end

where 

* ``subversion`` tells |chef| to use the ``Chef::Provider::Subversion`` provider during the |chef| run.
* ``"name"`` is the location in which the source files will be placed and/or synchronized with the files under source control management
* ``attribute`` is zero (or more) of the attributes that are available for this resource
* ``:action`` is the step that the resource will ask the provider to take during the |chef| run

The following is an example shows the subversion resource:

.. code-block:: ruby

   subversion "CouchDB Edge" do
     repository "http://svn.apache.org/repos/asf/couchdb/trunk"
     revision "HEAD"
     destination "/opt/mysources/couch"
     action :sync
   end

where

* the name of the resource is ``CouchDB Edge``
* the ``repository`` and ``reference`` nodes tell |chef| which repository and revision to use

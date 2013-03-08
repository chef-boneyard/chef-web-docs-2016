.. The contents of this file are included in multiple topics.
.. This file should not be changed in a way that hinders its ability to appear in multiple documentation sets.

The syntax for using the |resource service| resource in a recipe is as follows:

.. code-block:: ruby

   service "name" do
     some_attribute "value" # see attributes section below
     ...
     action :action # see actions section below
   end

where 

* ``service`` tells |chef| to use one of the following providers during the |chef| run: ``Chef::Provider::Service::Init``, ``Chef::Provider::Service::Init::Debian``, ``Chef::Provider::Service::Upstart``, ``Chef::Provider::Service::Init::Freebsd``, ``Chef::Provider::Service::Init::Gentoo``, ``Chef::Provider::Service::Init::Redhat``, ``Chef::Provider::Service::Solaris``, ``Chef::Provider::Service::Windows``, or ``Chef::Provider::Service::Macosx``. The provider that is used by |chef| depends on the platform of the machine on which the |chef| run is taking place
* ``"name"`` is the name of the service
* ``attribute`` is zero (or more) of the attributes that are available for this resource
* ``:action`` is the step that the resource will ask the provider to take during the |chef| run

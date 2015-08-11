.. The contents of this file are included in multiple topics.
.. This file should not be changed in a way that hinders its ability to appear in multiple documentation sets.


A ``vagrant_box`` resource block typically declares a box to be created using |vagrant|. For example:

.. code-block:: ruby

   vagrant_box 'opscode-centos-6.4' do
     url 'http://bento.s3.amazonaws.com/vagrant/vmware/centos-6.4.box'
     vagrant_provider 'vmware_desktop'
   end

The full syntax for all of the properties that are available to the ``vagrant_box`` resource is:

.. code-block:: ruby

   vagrant_box 'name' do
     driver_options          Hash
     vagrant_provider        String
     url                     String
   end

where 

* ``vagrant_box`` is the resource
* ``name`` is the name of the resource block and also the name of an instance in |amazon ec2|
* ``driver_options``, ``vagrant_provider``, and ``url`` are properties of this resource, with the |ruby| type shown. |see attributes|

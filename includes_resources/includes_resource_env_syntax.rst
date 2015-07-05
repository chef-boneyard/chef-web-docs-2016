.. The contents of this file are included in multiple topics.
.. This file should not be changed in a way that hinders its ability to appear in multiple documentation sets.


A |resource env| resource block manages environment keys in |windows|:

.. code-block:: ruby

   env 'ComSpec' do
     value 'C:\\Windows\\system32\\cmd.exe'
   end

The full syntax for all of the attributes that are available to the |resource env| resource is:

.. code-block:: ruby

   env 'name' do
     delim                      String
     key_name                   String # defaults to 'name' if not specified
     notifies                   # see description
     provider                   Chef::Provider::Env
     value                      String
     action                     Symbol # defaults to :create if not specified
   end

where 

* ``env`` is the resource
* ``name`` is the name of the resource block
* ``:action`` identifies the steps the |chef client| will take to bring the node into the desired state
* ``delim``, ``key_name``, ``provider``, and ``value`` are attributes of this resource, with the |ruby| type shown. |see attributes|

.. The contents of this file are included in multiple topics.
.. This file should not be changed in a way that hinders its ability to appear in multiple documentation sets.

A |resource script_python| resource block executes scripts using |python|:

.. code-block:: ruby

   python 'extract_module' do
     cwd ::File.dirname(src_filepath)
     code <<-EOH
       mkdir -p #{extract_path}
       tar xzf #{src_filename} -C #{extract_path}
       mv #{extract_path}/*/* #{extract_path}/
       EOH
     not_if { ::File.exists?(extract_path) }
   end

where 

* ``cwd`` specifies the directory from which the command is run
* ``code`` specifies the command to run

The full syntax for all of the properties that are available to the |resource script_python| resource is:

.. code-block:: ruby

   python 'name' do
     code                       String
     creates                    String
     cwd                        String
     environment                Hash
     flags                      String
     group                      String, Integer
     notifies                   # see description
     path                       Array
     provider                   Chef::Provider::Script::Python
     returns                    Integer, Array
     subscribes                 # see description
     timeout                    Integer, Float
     user                       String, Integer
     umask                      String, Integer
     action                     Symbol # defaults to :run if not specified
   end

where 

* ``python`` is the resource
* ``name`` is the name of the resource block
* ``cwd`` is the location from which the command is run
* ``:action`` identifies the steps the |chef client| will take to bring the node into the desired state
* ``code``, ``creates``, ``cwd``, ``environment``, ``flags``, ``group``, ``path``, ``provider``, ``returns``, ``timeout``, ``user``, and ``umask`` are properties of this resource, with the |ruby| type shown. |see attributes|

.. The contents of this file are included in multiple topics.
.. This file should not be changed in a way that hinders its ability to appear in multiple documentation sets.


A |resource script_ruby| resource block executes scripts using |ruby|:

.. code-block:: ruby

   ruby 'extract_module' do
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

The full syntax for all of the attributes that are available to the |resource script_ruby| resource is:

.. code-block:: ruby

   ruby 'name' do
     code                       String
     command                    String, Array # defaults to 'name' if not specified
     creates                    String
     cwd                        String
     environment                Hash
     flags                      String
     group                      String, Integer
     interpreter                String
     notifies                   # see description
     path                       Array
     provider                   Chef::Provider::Script::Ruby
     returns                    Integer, Array
     timeout                    Integer, Float
     user                       String, Integer
     umask                      String, Integer
     action                     Symbol # defaults to :run if not specified
   end

where 

* ``ruby`` is the resource
* ``name`` is the name of the resource block
* ``command`` is the command to be run and ``cwd`` is the location from which the command is run
* ``:action`` identifies the steps the |chef client| will take to bring the node into the desired state
* ``code``, ``command``, ``creates``, ``cwd``, ``environment``, ``flags``, ``group``, ``interpreter``, ``path``, ``provider``, ``returns``, ``timeout``, ``user``, and ``umask`` are attributes of this resource, with the |ruby| type shown. |see attributes|

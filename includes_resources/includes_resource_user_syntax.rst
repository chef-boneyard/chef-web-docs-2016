.. The contents of this file are included in multiple topics.
.. This file should not be changed in a way that hinders its ability to appear in multiple documentation sets.


A |resource user| resource block manages users on a node:

.. code-block:: ruby

   user 'a user' do
     comment 'A random user'
     uid 1234
     gid 'users'
     home '/home/random'
     shell '/bin/bash'
     password '$1$JJsvHslasdfjVEroftprNn4JHtDi'
   end

The full syntax for all of the attributes that are available to the |resource user| resource is:

.. code-block:: ruby

   user 'name' do
     comment                    String
     force                      TrueClass, FalseClass # see description
     gid                        String, Integer
     home                       String
     iterations                 Integer
     manage_home                TrueClass, FalseClass
     non_unique                 TrueClass, FalseClass
     notifies                   # see description
     password                   String
     provider                   Chef::Provider::User
     salt                       String
     shell                      String
     supports                   Hash
     subscribes                 # see description
     system                     TrueClass, FalseClass
     uid                        String, Integer
     username                   String # defaults to 'name' if not specified
     action                     Symbol # defaults to :create if not specified
   end

where 

* ``user`` is the resource
* ``name`` is the name of the resource block
* ``:action`` identifies the steps the |chef client| will take to bring the node into the desired state
* ``comment``, ``force``, ``gid``, ``home``, ``iterations``, ``manage_home``, ``non_unique``, ``password``, ``provider``, ``salt``, ``shell``, ``supports``, ``system``, ``uid``, and ``username`` are attributes of this resource, with the |ruby| type shown. |see attributes|

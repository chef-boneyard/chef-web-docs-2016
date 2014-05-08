.. The contents of this file are included in multiple topics.
.. This file should not be changed in a way that hinders its ability to appear in multiple documentation sets.

Use the |resource machine| resource to define one (or more) machines, and then converge entire clusters of machines. This allows clusters to be maintained in a version control system and to be defined using multi-machine orchestration scenarios. For example, spinning up small test clusters and using them for continuous integration and local testing, building clusters that auto-scale, moving a set of machines in one cluster to another, building images, and so on.

Each machine is declared as a separate application topology, defined using operating system- and provisioner-independent files. Recipes (defined in cookbooks) are used to manage them. The |chef client| is used to converge the individual nodes (machines) within the cluster. 

For example:

.. code-block:: ruby

   machine 'mario' do
     recipe 'postgresql'
     recipe 'mydb'
     tag 'mydb_master'
   end
   
   num_webservers = 1
   
   1.upto(num_webservers) do |i|
     machine "luigi#{i}" do
       recipe 'apache'
       recipe 'mywebapp'
     end
   end

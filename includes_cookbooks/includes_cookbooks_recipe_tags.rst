.. The contents of this file are included in multiple topics.
.. This file should not be changed in a way that hinders its ability to appear in multiple documentation sets.

Tags can be added and remove. Machines can be checked to see if they already have a specific tag. To use tags in your recipe simply add the following::

   tag('mytag')

To test if a machine is tagged, add the following::

   tagged?('mytag')

to return ``true`` or ``false``. ``tagged?`` can also use an array as an argument.

To remove a tag::

   untag('mytag')

For example::

   tag("machine") 
    
   if tagged?("machine") 
      Chef::Log.info("Hey I'm #{node[:tags]}") 
   end 
    
   untag("machine") 
    
   if not tagged?("machine") 
      Chef::Log.info("I has no tagz") 
   end

Will return something like this::

   [Thu, 22 Jul 2010 18:01:45 +0000] INFO: Hey I'm machine 
   [Thu, 22 Jul 2010 18:01:45 +0000] INFO: I has no tagz
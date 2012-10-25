.. The contents of this file are included in multiple topics.
.. This file should not be changed in a way that hinders its ability to appear in multiple documentation sets.

**jamescott: I found this section a tad confusing on the Wiki -- the verbiage didn't make sense, so I rewrote it to "make sense" which means that this section should be reviewed carefully by someone who actually understands it, in case I misunderstood the point I thought the article was trying to make.**

A cookbook will frequently be designed to work across many platforms. A template often needs to be specific to a platform, host, or function of a node. When these differences are minor, they can often be handled with a small amount of logic within the template itself. When these differences are significant, a cookbook can be designed to use many templates. |chef| will determine the correct template based on the rules that are provided to it.

For example, a cookbook that has a directory structure like this::

   templates/
      host-foo.example.com
      ubuntu-8.04
      ubuntu
      default

would be matched in the same order. For a node named "foo.example.com" and resource named ``sudoers.erb``, matching would occur in the following order::

   host-foo.example.com/sudoers.erb
   ubuntu-8.04/sudoers.erb
   ubuntu/sudoers.erb
   default/sudoers.erb

If the ``sudoers.rb`` resource was placed under the ``files/host-foo.example.com/`` directory, then it would only be copied to a machine with the domain name ``foo.example.com``.

**jamescott: THE SECTION IMMEDIATELY BELOW MAKES SENSE, BUT DOESN'T MAKE SENSE. COME BACK TO THIS ONE**

So, the rule distilled:

1. host-node[:fqdn]
2. node[:platform]-node[:platform_version]
3. node[:platform]
4. default

where ``default`` does not refer to a recipe in ``default.rb``. Templates are not split up into different directories by a recipe.
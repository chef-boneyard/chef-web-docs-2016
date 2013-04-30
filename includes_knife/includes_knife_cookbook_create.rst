.. The contents of this file are included in multiple topics.
.. This file describes a command or a sub-command for Knife.
.. This file should not be changed in a way that hinders its ability to appear in multiple documentation sets.


The ``create`` argument is used to create a new cookbook directory on the local machine, including the following directories and files:

  * cookbook/attributes
  * cookbook/CHANGELOG.md
  * cookbook/definitions
  * cookbook/files/default
  * cookbook/libraries
  * cookbook/metadata.rb
  * cookbook/providers
  * cookbook/README.md (or .rdoc)
  * cookbook/recipes/default.rb
  * cookbook/resources
  * cookbook/templates/default

After the cookbook is created, it can be uploaded to the |chef server| using the ``knife upload`` argument.

